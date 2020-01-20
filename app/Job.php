<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    protected $fillable = [
        'name',
        'details',
        'eircode',
        'city',
        'startdate',
        'enddate',
        'payment',
        'status',
        'category_id',
        'employer_id',
    ];

    public function category()
    {
        return $this->hasOne(category::class);
    }

    public function employer()
    {
        return $this->belongsTo(Employer::class);
    }
}
