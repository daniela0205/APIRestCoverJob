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
    $job= Job::all();
    //    $job=  DB::table('jobs')->select('id','name','city','start_date','start_time')
    //    ->where('start_date','>=', date('Y-m-d'))
    //    ->where('start_time','>=', date('h:i'))
    //    ->get();

      
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

    public function ShowJobfromtoday()
    {
      // $job= Job::all();
       $job=  DB::table('jobs')->select('id','name','city','start_date','start_time')
       ->where('start_date','>=', date('Y-m-d'))
       ->where('start_time','>=', date('h:i'))
       ->get();

      
       return $this->showAll($job);
    }

    public function serchby($q){
        
        $jobs = Jobs::where('name', '%'.$q.'%')
        ->orWhere ('city', 'LIKE', '%'.$q.'%' )->get();
     
      return $this->showAll($jobs);
        
           
   
    }


    public function serchby2($q){
        
        $jobs = Jobs::where ( 'name', 'LIKE', '%' . $q . '%' )
        ->orWhere ( 'city', 'LIKE', '%' . $q . '%' )
        ->where(function ($query) {
            $query->where('city', 'LIKE', '%' . $q . '%' )
                  ->orWhere('category_id', 'LIKE', '%' . $q . '%' );
        })->get();        
    
        return $this->showAll($jobs);
    }


    

}
