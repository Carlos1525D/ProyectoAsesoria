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
        Schema::create('temas_asesoria', function (Blueprint $table) {
            $table->id(ID_Tema,);
            $table->string(Nombre_Tema, 100)->nullable();
            $table->string(Materia_Tema, 50)->nullable();
            $table->string(PalClav_Temas, 100)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('temas_asesoria');
    }
};
