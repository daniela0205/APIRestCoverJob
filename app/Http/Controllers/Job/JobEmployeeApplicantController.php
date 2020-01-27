<?php

namespace App\Http\Controllers\Job;

use App\Job;
use App\Applicant;
use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class JobEmployeeApplicantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Job $job, Employee $employee )
    { 
        
        if ($job->applicants->contains('employee_id',$employee->id)) {
            return $this->errorResponse('Thit user already applied for this job', 404);
        }
        $applicant = Applicant::create([
            'status' => 'accept',
            'job_id' => $job->id,
            'employee_id' => $employee->id,
        ]);

         
   return $this->showOne($applicant, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

  
   
}
