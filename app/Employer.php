<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employer extends Model
{
    protected $fillable = [
        'company',
        'contact_name',
        'contact_phone',
        'user_id',
    ];
}
