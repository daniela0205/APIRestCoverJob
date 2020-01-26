<?php

namespace App\Http\Resources;

use App\Http\Resources\BaseResource;

class EmployerResource extends BaseResource
{
    public static $map = [      
        'id' => 'identifier',
        'company' => 'name_company',
        'contact_name'=>'contact_name',
        'contact_phone'=>'contact_phone',
        'user_id'=>'user',
        'updated_at' => 'last_modified',
        'created_at' => 'creation_date',
    ];

    public function generateLinks($request)
    {
        return [
            [
                'rel' => 'self',
                'href' => route('employers.show', $this->id),
            ],
            [
                'rel' => 'employers.jobs',
                'href' => route('employers.jobs.index', $this->id),
            ],
          
        ];
    }
}