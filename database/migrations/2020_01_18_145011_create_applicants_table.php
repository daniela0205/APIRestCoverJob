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
            $table->integer('category_id')->unsigned();
            $table->integer('employer_id')->unsigned();
            $table->foreign('category_id')->references('id')->on('categories');
            $table->foreign('employer_id')->references('id')->on('employers');
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
