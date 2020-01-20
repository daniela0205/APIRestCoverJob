<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Applicant extends Model
{
    protected $fillable = [
        'status',
        'ranking',
        'feedback',
        'job_id',
        'employee_id',
    ];

    public function job(){
        return $this->belongsTo(Job::class);
    }

    public function employees(){
        return $this->belongsToMany(Employee::class);
    }
}
