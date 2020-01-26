<?php

namespace App\Http\Controllers\Employer;

use App\Job;
use App\Employer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class EmployerJobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Employer  $employer
     * @return \Illuminate\Http\Response
     */
    public function index(Employer $employer)
    {
        $products = $employer->jobs;

        return $this->showAll($products);

    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employer  $employer
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Employer $employer)
    {
        $data = $request->validate([
 
            'name'=> 'max:255',
            'details'=> 'max:250',
            'eircode'=> 'max:255',
            'city'=> 'max:255',
            'start_date'=> 'required|date_format:Y-m-d',
            'start_time'=>'required|date_format:H:i:s',
            'end_date'=>'date_format:Y-m-d|after_or_equal:start_date',
            'end_time'=>'date_format:H:i:s',
            'payment'=>'required|numeric|between:0,99.99',
            'status' => 'required|boolean',
            'category_id'=>'required|integer',
         
        ]);

       $data['employer_id']= $employer->id;

        $job = Job::create($data);

        return $this->showOne($job, 201);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employer  $employer
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employer $employer, Job $job)
    {
        $data = $request->validate([
 
            'name'=> 'max:255',
            'details'=> 'max:250',
            'eircode'=> 'max:255',
            'city'=> 'max:255',
            'start_date'=> 'required|date_format:Y-m-d',
            'start_time'=>'required|date_format:H:i:s',
            'end_date'=>'date_format:Y-m-d|after_or_equal:start_date',
            'end_time'=>'date_format:H:i:s',
            'payment'=>'required|numeric|between:0,99.99',
            'status' => 'required|boolean',
            'category_id'=>'required|integer',
         
        ]);

        $this->checkEmployer($employer, $job);

        $job->fill($data);
        if ($job->isClean()) {
            return $this->errorResponse('Please specify at least one new value to update', 422);
        }

        $job->save();

        return $this->showOne($job);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Employer  $employer
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employer $employer, Job $job)
    {
        $this->checkEmployer($employer, $job);

        $job->delete();

        return $this->showOne($job);
    }

    public function checkEmployer(Employer $employer, Job $job){

        if($employer->id != $job->employer_id){
            throw new HttpException(403, 'The specified employer is not the actual employer of this job');
        }
    }
}
