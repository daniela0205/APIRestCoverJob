<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $fillable = [
        'phone',
        'eircode',
        'levelEdu',
        'certification',
        'CV',
        'user_id',
    ];
}
