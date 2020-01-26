<?php

namespace App\Http\Controllers\Employee;

use App\Employee;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employee = Employee::all();

        return $this->showAll($employee);
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
            'phone'=> 'max:255',
            'eircode'=> 'max:255',
            'levelEdu'=> 'max:255',
            'certification'=> 'max:255',
            'CV'=> 'max:255',
            'user_id'=> 'required|integer',
            //update the user_id wiht a login user

        ]);

   
        $employee = Employee::create($data);

        return $this->showOne($employee, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        return $this->showOne($employee);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee)
    {
        $data = $request->validate([
            'phone'=> 'max:255',
            'eircode'=> 'max:255',
            'levelEdu'=> 'max:255',
            'certification'=> 'max:255',
            'CV'=> 'max:255',            

        ]);

        $employee->fill($request->only(['phone','eircode','levelEdu','certification','Cv']));

        if (!$employee->isDirty()) {
            return $this->errorResponse('Please specify at least one different value', 422);
        }

        $employee->save();

        return $this->showOne($employee);        
        

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        $employee->delete();

        return $this->showOne($employee);
    }
}
