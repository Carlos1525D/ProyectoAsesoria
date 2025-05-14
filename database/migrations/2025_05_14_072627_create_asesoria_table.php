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
        Schema::create('asesoria', function (Blueprint $table) {
      $table->id('ID_Asesoria');
            $table->date('Fecha_Aseso')->nullable();
            $table->time('Hora_Aseso')->nullable();
            $table->string('Modalidad', 30)->nullable();

            // Llaves foráneas
            $table->unsignedBigInteger('idAsesor')->nullable();
            $table->unsignedBigInteger('idAsesorado')->nullable();
            $table->unsignedBigInteger('idTemaAseso')->nullable();

            // Índices y relaciones
            $table->foreign('idAsesor')->references('ID_Asesor')->on('asesor')->onDelete('set null');
            $table->foreign('idAsesorado')->references('ID_Asesorado')->on('asesorado')->onDelete('set null');
            $table->foreign('idTemaAseso')->references('ID_Tema')->on('temas_asesoria')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('asesoria');
    }
};
