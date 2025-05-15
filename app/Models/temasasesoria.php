<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TemasAsesoria extends Model
{
    protected $table = 'temas_asesoria';
    protected $primaryKey = 'ID_Tema';
    public $timestamps = false;

    protected $fillable = [
        'Nombre_Tema',
        'Materia_Tema',
        'PalClav_Temas',
    ];

    public function asesorias()
    {
        return $this->hasMany(Asesoria::class, 'idTemaAseso', 'ID_Tema');
    }
}
