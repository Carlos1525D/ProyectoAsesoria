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
        Schema::create('asesorado', function (Blueprint $table) {
            $table->id('ID_Asesorado');
            $table->string('Nombre_Asesorado', 100)->nullable();
            $table->string('NoControl', 15)->nullable();
            $table->string('Correo_Ins', 50)->nullable();
            $table->string('Password', 50)->nullable();
            $table->string('Carrera', 30)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asesorado');
    }
};
