<?php
use App\Category;
use App\Employer;
use App\Job;


use Faker\Generator as Faker;

$factory->define(App\Job::class, function (Faker $faker) {
    return [
        
        'name'=>$faker->jobTitle,
        'details'=>$faker->word,
        'eircode'=>$faker->address,
        'city'=>$faker->city,
        'start_date'=>$faker->date($format = 'Y-m-d', $max = 'now'),
        'start_time'=>$faker->time($format = 'H:i', $max = 'now'),
        'end_date'=>$faker->date($format = 'Y-m-d', $max = 'now'),
        'end_time'=>$faker->time($format = 'H:i', $max = 'now'),
        'payment'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 10, $max = 20),
        'status'=>$faker->boolean,
        'category_id'=>Category::all()->random()->id,
        'employer_id'=>Employer::all()->random()->id,

    ];
});
