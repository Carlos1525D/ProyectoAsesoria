<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Asesorado extends Model
{
    protected $table = 'asesorado';
    protected $primaryKey = 'ID_Asesorado';
    public $timestamps = false;

    protected $fillable = [
        'Nombre_Asesorado',
        'NoControl',
        'Correo_Ins',
        'Password',
        'Carrera',
    ];

    public function asesorias()
    {
        return $this->hasMany(Asesoria::class, 'idAsesorado', 'ID_Asesorado');
    }
}
