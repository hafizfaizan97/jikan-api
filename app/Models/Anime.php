<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Anime extends Model
{
    protected $fillable = ['mal_id', 'titles', 'slugs'];

    protected $casts = [
        'titles' => 'array',
        'slugs' => 'array',
    ];
}
