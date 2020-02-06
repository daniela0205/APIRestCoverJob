<?php

namespace App\Http\Controllers\Job;

use App\Category;
use App\Job;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class JobCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function index(Job $job)
    {
        $category= $job->category;
        return $this->showAll($category);

        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function create(Job $job)
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Job $job)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Job  $job
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Job $job, Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Job  $job
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Job $job, Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Job  $job
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Job $job, Category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Job  $job
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Job $job, Category $category)
    {
        //
    }
}
