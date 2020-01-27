<?php

namespace App\Http\Controllers\Job;

use App\Job;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $job=  DB::table('jobs')->select('id','name','city','start_date')->get();
     //  $name = $job->name(); 
      
       // $date_currenly = strtotime(date("d-m-Y H:i:00",time()));
       //$date_currenly = date("d-m-Y H:i:00",time())c;
       // $job = Job::all();
       //$job = Job::all()->whereDate()
      // DB::table('users')
       //->whereDate('created_at', '2016-12-31')
       //->get();
       // return $date_currenly;
       return $this->showAll($job);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function show(Job $job)
    {
        return $this->showOne($job);
    }

}
