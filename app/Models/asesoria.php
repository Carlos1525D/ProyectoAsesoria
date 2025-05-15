<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Asesoria extends Model
{
    protected $table = 'asesoria';
    protected $primaryKey = 'ID_Asesoria';
    public $timestamps = false;

    protected $fillable = [
        'Fecha_Aseso',
        'Hora_Aseso',
        'Modalidad',
        'idAsesor',
        'idAsesorado',
        'idTemaAseso',
    ];

    public function asesor()
    {
        return $this->belongsTo(Asesor::class, 'idAsesor', 'ID_Asesor');
    }

    public function asesorado()
    {
        return $this->belongsTo(Asesorado::class, 'idAsesorado', 'ID_Asesorado');
    }

    public function tema()
    {
        return $this->belongsTo(TemasAsesoria::class, 'idTemaAseso', 'ID_Tema');
    }
}
