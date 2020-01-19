<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class applicant extends Model
{
    protected $fillable = [
        'status',
        'ranking',
        'feedback',
        'category_id',
        'employer_id',
    ];
}
