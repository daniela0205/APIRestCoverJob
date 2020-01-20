<?php
use App\User;
use App\Employer;

use Faker\Generator as Faker;

$factory->define(App\Employer::class, function (Faker $faker) {
    return [
        'company'=>$faker->company,
        'contact_name'=>$faker->name,
        'contact_phone'=>$faker->phoneNumber,
        'user_id'=>User::all()->random()->id,
    ];
});
