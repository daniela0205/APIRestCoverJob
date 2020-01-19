<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class applicant extends Model
{
    protected $fillable = [
        'status',
        'ranking',
        'feedback',
        'job_id',
        'employee_id',
    ];
}
