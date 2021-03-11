<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

use App\Models\EmploymentTag;
use App\Models\EnrollmentTag;

class TagController extends Controller
{
    /**
     * Set of validation rules shared between tag types
     * 
     * @var array
     */
    public $validationRules = [ 'tag' => 'required|string' ];

    /**
     * Show list of tags available
     * 
     * @return \Illuminate\View\View
     */
    public function index()
    {
        return Inertia::render('Tags/Index', [
            'employmentTags' => EmploymentTag::orderBy('tag', 'ASC')->get(),
            'enrollmentTags' => EnrollmentTag::orderBy('tag', 'ASC')->get(),
        ]);
    }

    /**
     * Removes an EmploymentTag from the database
     * 
     * @param int $id;
     * 
     * @return redirect
     */
    public function employmentDelete($id)
    {
        EmploymentTag::destroy($id);
        return redirect('/tags');
    }

    /**
     * Adds new EmploymentTag to the database
     * 
     * @param Request $request
     * 
     * @return redirect
     */
    public function employmentCreate(Request $request)
    {
        $validated = $request->validate($this->validationRules);

        EmploymentTag::create([
            'tag' => ucwords($request->tag),
            'taxonomy_id' => 1
        ]);

        return redirect('/tags');
    }

    /**
     * Removes an EnrollmentTag from the database
     * 
     * @param int $id;
     * 
     * @return redirect
     */
    public function enrollmentDelete($id)
    {
        EnrollmentTag::destroy($id);
        return redirect('/tags');
    }

    /**
     * Adds new EnrollmentTag to the database
     * 
     * @param Request $request
     * 
     * @return redirect
     */
    public function enrollmentCreate(Request $request)
    {
        $validated = $request->validate($this->validationRules);

        EnrollmentTag::create([
            'tag' => ucwords($request->tag),
            'taxonomy_id' => 1
        ]);

        return redirect('/tags');
    }
}
