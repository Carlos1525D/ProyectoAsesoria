<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('asesor', function (Blueprint $table) {
            $table->id("ID_Asesor");
            $table->string("Nombre_Asesor", 100)->nullable();
            $table->string("Correo_Asesor", 50)->nullable();
            $table->string("Password_Asesor", 30)->nullable();
            $table->string("Dias_Atencion",100)->nullable();
            $table->string("Horas_Atencion", 30)->nullable();
            $table->string("Descripsion_Asesor", )->nullable();


        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asesor');
    }
};
