<?php

header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AlumnusController;
use App\Http\Controllers\CheckinController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\TagController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/laravel', function () { return view('welcome'); });

// Added Code for oAuth
Route::get('auth/google','App\Http\Controllers\GoogleController@redirectToGoogle');
Route::get('auth/google/callback', 'App\Http\Controllers\GoogleController@handleGoogleCallback');


/**
 * Dashboard Routes
 * 
 * This will just be basic pages
 */
Route::get('/', [DashboardController::class, 'index']);



/**
 * User Management
 * 
 * more to come
 */
Route::get('/users', [UserController::class, 'index']);



/**
 * Tag Management
 * 
 * covers Employment and Enrollment
 */
Route::get('/tags', [TagController::class, 'index']);
Route::get('/tags/employment/delete/{id}', [TagController::class, 'employmentDelete']);
Route::get('/tags/enrollment/delete/{id}', [TagController::class, 'enrollmentDelete']);

Route::post('tags/employment/create/', [TagController::class, 'employmentCreate']);
Route::post('tags/enrollment/create/', [TagController::class, 'enrollmentCreate']);



/**
 * Alumnus Management
 * 
 * includes ...
 */
Route::get('/alumnus/overdue/', [AlumnusController::class, 'overdue']);
Route::get('/alumnus/details/{id}', [AlumnusController::class, 'show']);
Route::get('/alumnus/create/', [AlumnusController::class, 'create']);
Route::get('/alumnus/edit/{id}', [AlumnusController::class, 'edit']);

Route::post('/alumnus/filter', [AlumnusController::class, 'filter']);
Route::post('/alumnus/save', [AlumnusController::class, 'save']);
Route::post('/alumnus/saveCredential', [AlumnusController::class, 'saveCredential']);



/**
 * Organization Management
 * 
 * covers schools, other
 */
Route::get('/schools', [OrganizationController::class, 'schools']);
Route::get('/schools/{id}', [OrganizationController::class, 'singleSchool']);



/**
 * Checkin Management
 * 
 * covers all checkins
 */
Route::get('/checkins/show/{id}', [CheckinController::class, 'show']);
Route::get('/checkins/create/{id}', [CheckinController::class, 'create']);
Route::get('/checkins/dropEmployment/{id}', [CheckinController::class, 'dropEmployment']);
Route::get('/checkins/dropEnrollment/{id}', [CheckinController::class, 'dropEnrollment']);

Route::post('/checkins/store', [CheckinController::class, 'store']);
Route::post('/checkins/employmentCheckin', [CheckinController::class, 'employmentCheckin']);
Route::post('/checkins/enrollmentCheckin', [CheckinController::class, 'enrollmentCheckin']);