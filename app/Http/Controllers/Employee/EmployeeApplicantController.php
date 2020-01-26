<?php

namespace App\Http\Controllers\Employee;

use App\Applicant;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployeeApplicantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function index(Employee $employee)
    {
        $applicants = $employee->applicants;

        return $this->showAll($applicants);
    }

   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employee  $employee
     * @param  \App\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee, Applicant $applicant)
    {
       
    }



    
}
