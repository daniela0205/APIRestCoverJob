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
Route::get('useremployee/{user}', 'UserController@isEmployee');
Route::get('useremployer/{user}', 'UserController@isEmployer');
Route::apiResource('users.employees','UserEmployeeController');



//Employee
Route::apiResource('employers','Employer\EmployerController');
Route::apiResource('employers.jobs', 'Employer\EmployerJobController');
Route::apiResource('employers.applicants', 'Employer\EmployerApplicantController');

//Route::apiResource('buyers', 'Buyer\BuyerController', ['only' => ['index', 'show']]);

//Employee
Route::apiresource('employees','Employee\EmployeeController');
Route::apiresource('employees.applicants','Employee\EmployeeApplicantController');


//Category
Route::apiresource('categories','Category/CategoryController');


//Job
Route::apiresource('jobs','Job\JobController');
Route::get('jobsOnDate', 'Job\JobController@ShowJobfromtoday');
Route::get('jobsSearch', 'Job\JobController@serchby');
Route::get('jobsSearchbyDate', 'Job\JobController@serchbyDate');
Route::get('jobsSearchbyCity', 'Job\JobController@serchbyCity');
Route::get('jobsSearchbyName', 'Job\JobController@serchbyName');
Route::get('jobsSearchbyCategory', 'Job\JobController@serchbyCategory');
Route::apiResource('jobs.employees.applicants', 'Job\JobEmployeeApplicantController', ['only' => ['store']]);
Route::apiResource('jobs.applicants', 'Job\JobApplicantController', ['only' => ['index', 'update']]);
Route::apiresource('jobscategories','Job\JobCategoryController');


//Applicants
Route::group(['middleware' => 'auth:api'], function() {});
Route::apiResource('applicants','Applicant\ApplicantController');


// User
Route::post('register', 'Auth\RegisterController@register');
Route::post('login', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout');
Route::post('userlog', 'Auth\LoginController@userlog');
