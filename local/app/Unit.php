<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    protected $fillable = [
        'name'
    ];
    public function getAllUnit()
    {
        return $this->get();
    }
}
