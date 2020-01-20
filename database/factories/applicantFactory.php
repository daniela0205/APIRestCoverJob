<?php
use App\Employee;
use App\Applicant;
use App\Job;


use Faker\Generator as Faker;

$factory->define(App\Applicant::class, function (Faker $faker) {
    return [
        'status'=>$faker->randomElement($array = array ('accept', 'standby', 'wait', 'approved','reject')),
        'ranking'=>$faker->numberBetween($min = 1, $max = 5),
        'feedback'=>$faker->text,
        'job_id'=>Job::all()->random()->id,
        'employee_id'=>Employee::all()->random()->id,
        
    ];
});
