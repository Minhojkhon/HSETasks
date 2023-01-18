<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::dropIfExists('tasks');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
//        Schema::create('tasks', function (Blueprint $table) {
//            $table->id();
//            $table->string('title');
//            $table->text('conditiion');
//            $table->text('code');
//            $table->string('quan_views');
//            $table->timestamps();
//            $table->softDeletes();
//        });
    }
};
