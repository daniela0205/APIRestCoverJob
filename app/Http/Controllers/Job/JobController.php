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
       ->where('start_date','>=', date('Y-m-d')) ->get();

      //  ->where('start_time','>=', date('h:i'))
      
      
       return $this->showAll($job);
    }

    public function serchby(Request $request){
        
        
        $q = $request->input('query');
       $jobs = DB::table('jobs')->where('name','LIKE','%'.$q.'%')
              ->orWhere ( 'city','LIKE','%'.$q.'%' )->get();
        
     
      return $this->showAll($jobs);
        
           
   
    }

    public function serchbyCity(Request $request){
        
        
      $q = $request->input('query');
     $jobs = DB::table('jobs')->where('city','LIKE','%'.$q.'%')->get();
      
   
    return $this->showAll($jobs);
     
  }

  public function serchbyName(Request $request){
        
        
    $q = $request->input('query');
   $jobs = DB::table('jobs')->where('name','LIKE','%'.$q.'%')->get();
    
 
  return $this->showAll($jobs);
   
}

public function serchbyCategory(Request $request){
        
        
  $q = $request->input('query');
 $jobs = DB::table('jobs')->where('category_id','LIKE','%'.$q.'%')->get();
  

return $this->showAll($jobs);
 
}



    public function serchbyDate(Request $request){
      $q = $request->input('query');

      $job=  DB::table('jobs')
     ->where('start_date','>=', $q)->get();

     //  ->where('start_time','>=', date('h:i'))
     
     
      return $this->showAll($job);

        
    }
}
