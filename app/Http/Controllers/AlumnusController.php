<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

use App\Models\Alumnus;
use App\Models\AlumnusCredential;
use App\Models\Checkin;
use App\Models\Credential;
use App\Models\CredentialType;
use App\Models\EmploymentTag;
use App\Models\EnrollmentTag;
use App\Models\Person;
use App\Models\State;

use App\Services\CredentialService;
use App\Services\OrganizationService;

class AlumnusController extends Controller
{
    /**
     * Shows students who are overdue for a checkin
     * 
     * @return Inertia view
     */
    public function overdue()
    {
        $personIDs = DB::table('alumni_tracker_app_alumnuscheckin')->distinct()->pluck('alumnus_person_id')->toArray();

        return print_r($personIDs);
        
        return Inertia::render('Alumnus/Overdue', [
            'people' => Person::whereIn('id', $personIDs)->get()
        ]);
    }

    /**
     * show results of alumni based on search results
     * 
     * @return view
     */
    public function filter(Request $request)
    {
        $results = Person::where( 'first_name', 'like', '%'.$request['query'].'%' )
                         ->orWhere( 'last_name', 'like', '%'.$request['query'].'%' )
                         ->get();

        foreach ($results as $person) {
            $alumnus = Alumnus::where('person_id', $person->id)->first();
            if ($alumnus) {
                $people[] = [
                    'fullname' => $person->fullname(),
                    'person' => $person,
                    'alumnus' => $alumnus,
                    'severence' => $alumnus->severence(),
                    'organization' => $alumnus->organization()
                ];
            }
        }

        return Inertia::render('Alumnus/Filter', [
            'people' => $people ?? null,
            'query' => $request['query']
        ]);
    }

    /**
     * Retrieves data associated with a single Alumnus
     * 
     * @param int $id
     * 
     * @return view
     */
    public function show(int $id)
    {
        $person = Person::find($id);
        $types = CredentialType::all();
        $checkins = self::getCheckinData($person->checkins);

        return Inertia::render('Alumnus/Show', [
            'person' => $person,
            'alumnus' => self::getAlumnusData($id),
            'checkins' => $checkins,
            'duedate' => ($checkins) ? (new \DateTime($checkins[0]['date']))->modify('6 months')->format('Y-m-d') : null,
            'availableCredentials' => Credential::all(),
            'earnedCredentials' => self::getCredentialData($person->id, $types),
            'credentialTypes' => $types,
            'employmentTags' => EmploymentTag::all(),
            'enrollmentTags' => EnrollmentTag::all(),
            'schools' => OrganizationService::schools(),
            'employers' => OrganizationService::employers(),
            'address' => [
                'line1' => $person->streetAddress(),
                'line2' => $person->cityStateZip(),
            ]
        ]);
    }

    /**
     * Shows new student screen
     * 
     * @param int $id
     * 
     * @return view
     */
    public function create()
    {
        return Inertia::render('Alumnus/Create');
    }

    /**
     * Shows edit student screen
     * 
     * @param int $id
     * 
     * @return view
     */
    public function edit(int $id)
    {
        return Inertia::render('Alumnus/Edit', [
            'person' => Person::find($id),
            'states' => State::all()
        ]);
    }

    /**
     * updates person object
     * 
     * @param Request $request
     * @return redirect
     */
    public function save(Request $request)
    {
        $person = Person::find($request->id);

        $person->first_name = $request->first_name;
        $person->last_name = $request->last_name;
        $person->phone = $request->phone ?? null;
        $person->email = $request->email ?? null;
        $person->mailing_street = $request->mailing_street ?? null;
        $person->mailing_unit = $request->mailing_unit ?? null;
        $person->mailing_city = $request->mailing_city ?? null;
        $person->mailing_state_id = $request->mailing_state_id ?? null;
        $person->mailing_zip = $request->mailing_zip ?? null;

        $person->save();

        return redirect('/alumnus/details/'.$person->id);
    }

    /**
     * saves credential to a student
     * 
     * @param Request $request
     * @return redirect
     */
    public function saveCredential(Request $request)
    {
        AlumnusCredential::create([
            'earned_on' => $request->date,
            'alumnus_person_id' => $request->personID,
            'credential_id' => $request->focus,
        ]);

        return back(303);
    }

    /**
     * Retreives and formats alumnus data
     * 
     * @param int $personID
     * 
     * @return array associative
     */
    private static function getAlumnusData(int $personID)
    {
        $query = Alumnus::where('person_id', $personID)->get();

        foreach ($query as $row) {
            $alumnus[] = [
                'organization' => $row->organization()->name,
                'program' => "Program Name",
                'year' => $row->severence_date
            ];
        }

        return $alumnus ?? null;
    }

    /**
     * Formats checkin data
     * 
     * @param Collection $checkins
     * 
     * @return array associative
     */
    private static function getCheckinData($checkins)
    {
        foreach ($checkins as $row) {
            $data[] = [
                'id' => $row->id, 
                'date' => $row->occured,
                'user' => 'First Last',
                'needWork' => $row->needWork(),
                'needSchool' => $row->needSchool(),
            ];
        }

        return $data ?? null;
    }

    /**
     * Formats checkin data
     * 
     * @param int $personID
     * 
     * @return array associative
     */
    private static function getCredentialData(int $personID, $types = null)
    {
        $credentials = AlumnusCredential::where('alumnus_person_id', $personID)->get();
        $types = $types ?? CredentialType::all();

        foreach ($credentials as $row) {
            $credential = Credential::find($row->credential_id);
            $data[] = [
                'date' => $row->earned_on,
                'name' => $credential->focus,
                'type' => $types->find($credential->type_id)->type,
                'org'  => $credential->organization()->name
            ];
        }

        return $data ?? [];
    }

    /**
     * Compares date to six months before today
     * 
     * @param string date
     * 
     * @return boolean
     */
    private static function isLatestOverdue($date)
    {
        $Datetime = (new \DateTime())->modify('-6 months');

        return ($date < $Datetime->format('Y-m-d'));
    }
}
