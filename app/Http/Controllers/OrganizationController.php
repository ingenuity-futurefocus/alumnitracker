<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

use App\Models\Organization;

use App\Services\OrganizationService;

class OrganizationController extends Controller
{
    /**
     * Returns a list of schools
     * 
     * @return view
     */
    public function schools()
    {
        return Inertia::render('Organization/Index', [
            'schools' => OrganizationService::activeSchools()
        ]);
    }

    /**
     * Returns data on a school/organization
     * 
     * @return view
     */
    public function singleSchool($id)
    {
        return Inertia::render('Organization/Show', [
            'school' => Organization::find($id)
        ]);
    }
}
