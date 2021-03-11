<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

use App\Models\Alumnus;

use App\Services\OrganizationService;

class DashboardController extends Controller
{
    /**
     * this just exists for testing data
     */
    public function index()
    {
        return Inertia::render('Dashboard/Index');
    }
}
