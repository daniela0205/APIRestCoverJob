<?php

namespace App;

use App\Employer;
use App\Category;
use Illuminate\Database\Eloquent\Model;


class Job extends Model
{
    

    protected $fillable = [
        'name',
        'details',
        'eircode',
        'city',
        'start_date',
        'start_time',
        'end_date',
        'end_time',
        'payment',
        'status',
        'category_id',
        'employer_id',
    ];

    public function employer()
    {
        return $this->belongsTo(Employer::class);
        
    }

    public function category()
    {
        return $this->hasOne(category::class);
    }

    public function applicants()
    {
        return $this->hasMany(Applicant::class);
    }
  

  
}
