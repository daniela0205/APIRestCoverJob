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

    public function user()
    {
        return $this->belongsTo(User::class);
    }


    public function applicants(){
        return $this->hasMany(Applicant::class);
    }
}
