<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::apiresource('users','UserController');

//Employee
Route::apiResource('employers','Employer\EmployerController');
Route::apiResource('employers.jobs', 'Employer\EmployerJobController');
Route::apiResource('employers.applicants', 'Employer\EmployerApplicantController');

//Route::apiResource('buyers', 'Buyer\BuyerController', ['only' => ['index', 'show']]);

//Employee
Route::apiresource('employees','Employee\EmployeeController');
Route::apiresource('employees.applicants','Employee\EmployeeApplicantController');


//Category
Route::apiresource('categories','CategoryController');

//Job
Route::apiresource('jobs','Job\JobController');
Route::apiResource('jobs.employees.applicants', 'Job\JobEmployeeApplicantController', ['only' => ['store']]);
Route::apiResource('jobs.applicants', 'Job\JobApplicantController', ['only' => ['index', 'update']]);


//Applicants
Route::group(['middleware' => 'auth:api'], function() {
Route::apiResource('applicants','Applicant\ApplicantController');
});

// User
Route::post('register', 'Auth\RegisterController@register');
Route::post('login', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout');
