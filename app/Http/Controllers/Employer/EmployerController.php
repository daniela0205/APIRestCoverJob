<?php

namespace App\Http\Controllers\Employer;

use App\Employer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employer = Employer::all();

        return $this->showAll($employer);
    }

   

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate([
       
            'company'=> 'max:255',
            'contact_name'=> 'max:255',
            'contact_phone'=> 'max:255',
            'user_id'=> 'required|integer',

            //update the user_id wiht a login user

        ]);

   
        $employer = Employer::create($data);

        return $this->showOne($employer, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Employer  $employer
     * @return \Illuminate\Http\Response
     */
    public function show(Employer $employer)
    {
        return $this->showOne($employer);
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employer  $employer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employer $employer)
    {
        $data = $request->validate([
            'company'=> 'max:255',
            'contact_name'=> 'max:255',
            'contact_phone'=> 'max:255',

        ]);

        $employer->fill($request->only(['company','contact_name','contact_phone']));

        if (!$employer->isDirty()) {
            return $this->errorResponse('Please specify at least one different value', 422);
        }

        $employer->save();

        return $this->showOne($employer);    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Employer  $employer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employer $employer)
    {
        $employer->delete();

        return $this->showOne($employer);//
    }
}
