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
     Schema::create('administrador', function (Blueprint $table) {
    $table->id('ID_Admin');
    $table->string('Nombre_Admin', 100)->nullable();
    $table->string('Correo_Admin', 50)->nullable();
    $table->string('Password_Admin', 30)->nullable();
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('administrador');
    }
};
