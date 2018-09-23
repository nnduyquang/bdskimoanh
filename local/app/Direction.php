<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Direction extends Model
{
    protected $fillable = [
        'name'
    ];
    public function getAllDirection()
    {
        return $this->get();
    }
}
