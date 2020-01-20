<?php

use App\User;
use App\Employee;
use App\Employer;
use App\Category;
use App\Job;
use App\Applicant;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        Schema::disableForeignKeyConstraints();

        User::truncate();
        Employee::truncate();
        Employer::truncate();
        Category::truncate();
        Job::truncate();
        Applicant::truncate();

        $cantUser=100;
        $cantEmployee=50;
        $cantEmployer=50;
        $cantCategory=20;
        $cantJob=100;
        $cantApplicant=80;

        factory(User::class,$cantUser)->create();
        factory(Employee::class,$cantEmployee)->create();
        factory(Employer::class,$cantEmployer)->create();
        factory(Category::class,$cantCategory)->create();
        factory(Job::class,$cantJob)->create();
        factory(Applicant::class,$cantApplicant)->create();

        Schema::enableForeignKeyConstraints();

    }
}
