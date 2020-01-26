<?php

namespace App\Http\Controllers\Employer;

use App\Applicant;
use App\Employer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployerApplicantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Employer  $employer
     * @return \Illuminate\Http\Response
     */
    public function index(Employer $employer)
    {
        $applicants = $employer->jobs()
        ->whereHas('applicants')
        ->with('applicants')
        ->get();
    

      return $this->showAll($applicants);

    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Employer  $employer
     * @param  \App\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function show(Employer $employer, Applicant $applicant)
    {
        //
    }

  

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employer  $employer
     * @param  \App\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employer $employer, Applicant $applicant)
    {
        // not working
        
        $data = $request->validate([
            'status'=> 'max:255',
            'ranking'=> 'integer',
            'feedback'=> 'max:255',
      
        ]);
      
      //  $applicants = $employer->jobs()->whereHas('applicants')->with('applicants')->get()->pluck('applicants');

        //$this->checkEmployer($employer, $applicant);
      // $applicant->has($applicant->id);
      // if($applicants->has($applicant->id)){       
             $applicant->fill($request->only(['status','ranking','feedback']));
        //}

        $applicant->save();

        return $this->showOne($applicant);
    }

    
}
