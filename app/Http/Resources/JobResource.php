<?php

namespace App\Http\Resources;

use App\Http\Resources\BaseResource;

class ProductResource extends BaseResource
{
    public static $map = [
        
        'id' => 'identifier',
        'name' => 'title',
        'eircode'  => 'address',
        'city'  => 'city',
        'start_date' => 'startdate',
        'start_time' =>'starttime',
        'end_date'=>'endtdate',
        'end_time'=>'endtime',
        'payment'=>'pay',
        'status' =>'situation',
        'category_id' =>'category',
        'employer_id' =>'employer',
        'updated_at' => 'last_modified',
        'created_at' => 'creation_date',

    ];

    

    public function generateLinks()
    {
        return [
            [
                'rel' => 'self',
                'href' => route('jobs.show', $this->id),
            ],
            
            [
                'rel' => 'employer',
                'href' => route('employers.show', $this->employer_id),
            ],
        ];
    }
}