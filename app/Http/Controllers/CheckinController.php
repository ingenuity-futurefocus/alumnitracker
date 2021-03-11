<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

use App\Models\Checkin;
use App\Models\CheckinEmploymentTag;
use App\Models\CheckinEnrollmentTag;
use App\Models\Employment;
use App\Models\EmploymentTag;
use App\Models\Enrollment;
use App\Models\EnrollmentTag;
use App\Models\Organization;
use App\Models\OrganizationRole;
use App\Models\Person;

use App\Services\OrganizationService;

class CheckinController extends Controller
{
    /**
     * Shows create screen for making a new checkin
     * 
     * @param int $id
     * @return Inertia view
     */
    public function show(int $id)
    {
        $checkin = Checkin::find($id);
        return Inertia::render('Checkin/Show', [
            'person' => Person::find($checkin->alumnus_person_id),
            'checkin' => $checkin,
            'employmentTags' => Employmenttag::all(),
            'enrollmentTags' => EnrollmentTag::all(),
            'employments' => $this->getEmploymentData($id),
            'enrollments' => $this->getEnrollmentData($id),
            'schools' => OrganizationService::schools(),
            'employers' => OrganizationService::employers(),
        ]);
    }

    /**
     * Shows create screen for making a new checkin
     * 
     * @param int $id
     * @return Inertia view
     */
    public function create(int $id)
    {
        return Inertia::render('Checkin/Create', [
            'person' => Person::find($id)
        ]);
    }

    /**
     * Removes a specific checkin employment from the database
     * 
     * @param int $id
     * @return redirect back
     */
    public function dropEmployment(int $id)
    {
        $tagIDs = CheckinEmploymentTag::where('checkin_employment_id', $id)->pluck('id')->toArray();

        if ($tagIDs)
            CheckinEmploymentTag::destroy($tagIDs);

        Employment::destroy($id);
        return back(303);
    }

    /**
     * Removes a specific checkin enrollment from the database
     * 
     * @param int $id
     * @return redirect back
     */
    public function dropEnrollment(int $id)
    {
        $tagIDs = CheckinEnrollmentTag::where('checkin_enrollment_id', $id)->pluck('id')->toArray();

        if ($tagIDs)
            CheckinEnrollmentTag::destroy($tagIDs);

        Enrollment::destroy($id);
        return back(303);
    }

    /**
     * Shows create screen for making a new checkin
     * 
     * @param int $id
     * @return Inertia view
     */
    public function update(int $id)
    {
        $checkin = Checkin::find($id);
        return Inertia::render('Checkin/Show', [
            'person' => Person::find($checkin->alumnus_person_id),
            'checkin' => $checkin,
            'employmentTags' => EmploymentTag::all(),
            'enrollmentTags' => EnrollmentTag::all(),
            'schools' => OrganizationService::schools(),
            'employers' => OrganizationService::employers(),
        ]);
    }
    
    /**
     * Saves a checkin, sends user back to previous screen
     * 
     * @param Request $request
     * @return Back 303
     */
    public function store(Request $request)
    {
        $checkin = Checkin::create([
            'alumnus_person_id' => $request->personID,
            'conducted_by_id' => 2,
            'human_conducted' => false,
            'notes' => $request->notes,
            'occured' => $request->occured,
            'military' => false,
            'employed' => $request->employed,
            'enrolled' => $request->enrolled,
            'caregiver' => $request->caregiver,
            'notaa' => false,
        ]);

        return redirect("/checkins/show/$checkin->id");
    }

    /**
     * Processes an Employment type checkin
     * 
     * @param Request $request
     * @return Back 303
     */
    public function employmentCheckin(Request $request)
    {
        $employment = Employment::create([
            'start_date' => $request->start_date,
            'alumnus_checkin_id' => $request->checkin_id,
            'discontinued' => false,

            'paid' => true,
            'title' => $request->title,
            'satisfaction' => $request->satisfaction,
            'employer_id' => $request->employer_id,
            'start_date' => $request->start_date,
            'extend_id' => 1,
            'position_id' => 1,
            'work_state_id' => 1
        ]);

        foreach ($request->tags as $tag) {
            CheckinEmploymentTag::create([
                'checkin_employment_id' => $employment->id,
                'tag_id' => $tag
            ]);
        }

        return redirect("/checkins/show/$request->checkin_id");
    }

    /**
     * Processes an Enrollment type checkin
     * 
     * @param Request $request
     * @return Enrollment $enrollment
     */
    public function enrollmentCheckin(Request $request)
    {
        $role = OrganizationRole::where('organization_id', $request->awarder_id)->first();

        $enrollment = Enrollment::create([
            'start_date' => $request->start_date,
            'alumnus_checkin_id' => $request->checkin_id,
            'discontinued' => false,
            'completed' => false,
            'credential_awarder_id' => $role->capacity()->id,
            'study_state_id' => 1
        ]);

        foreach ($request->tags as $tag) {
            CheckinEnrollmentTag::create([
                'checkin_enrollment_id' => $enrollment->id,
                'tag_id' => $tag
            ]);
        }

        return redirect("/checkins/show/$request->checkin_id");
    }


    /**
     * Returns an array of company data
     * 
     * @param int $checkinID
     * @return array associative
     */
    private function getEmploymentData(int $checkinID)
    {
        $employments = Employment::where('alumnus_checkin_id', $checkinID)->get();

        foreach ($employments as $employment)
            $jobs[] = [
                'id' => $employment->id,
                'title' => $employment->title,
                'company' => $employment->employer()->name
            ];

        return $jobs ?? [];
    }

    /**
     * Returns an array of school data
     * 
     * @param int $checkinID
     * @return array associative
     */
    private function getEnrollmentData(int $checkinID)
    {
        $enrollments = Enrollment::where('alumnus_checkin_id', $checkinID)->get();

        foreach ($enrollments as $enrollment)
            $schools[] = [
                'id' => $enrollment->id,
                'school' => Organization::find($enrollment->credential_awarder_id),
                'year' => $enrollment->start_date
            ];

        return $schools ?? [];
    }
}
