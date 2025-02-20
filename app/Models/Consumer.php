<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Consumer extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

}
