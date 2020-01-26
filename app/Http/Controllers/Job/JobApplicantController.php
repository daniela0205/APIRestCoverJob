<?php

namespace App\Http\Controllers\Job;

use App\Applicant;
use App\Job;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class JobApplicantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function index(Job $job)
    {
        $applicants = $job->applicants;
       
        return $this->showAll($applicants);

    }

    

    /**
     * Display the specified resource.
     *
     * @param  \App\Job  $job
     * @param  \App\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function show(Job $job, Applicant $applicant)
    {
      


    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Job  $job
     * @param  \App\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Job $job, Applicant $applicant)
    {
        $data = $request->validate([
            'status'=> 'max:255',
            'ranking'=> 'integer',
            'feedback'=> 'max:255',
      
        ]);
      
      

        if (!$job->applicants()->find($applicant->id)) {
            return $this->errorResponse('The especified job is not a job from this applicant', 404);
        }

        $applicant->fill($request->only(['status','ranking','feedback']));
        
        $applicant->save();

        return $this->showOne($applicant);
    }


   
}
