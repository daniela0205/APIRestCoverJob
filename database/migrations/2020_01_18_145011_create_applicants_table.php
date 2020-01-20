<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApplicantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('applicants', function (Blueprint $table) {
            $table->increments('id');
            $table->enum('status', ['accept', 'standby', 'wait', 'approved','reject']);
            $table->enum('ranking', ['1', '2', '3', '4','5'])->nullable();
            $table->string('feedback')->nullable();           
            $table->timestamps();
            $table->integer('job_id')->unsigned();
            $table->integer('employee_id')->unsigned();
            $table->foreign('job_id')->references('id')->on('jobs');
            $table->foreign('employee_id')->references('id')->on('employees');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('applicants');
    }
}
