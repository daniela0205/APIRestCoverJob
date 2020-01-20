<?php
use App\User;
use App\Employee;

use Faker\Generator as Faker;

$factory->define(App\Employee::class, function (Faker $faker) {
    return [

        'phone'=>$faker->phoneNumber,
        'eircode'=>$faker->streetAddress, 
        'levelEdu'=>$faker->word,
        'certification'=>$faker->word,
        'CV'=>$faker->url,
        'user_id'=>User::all()->random()->id,
    ];
});
