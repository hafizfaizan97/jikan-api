<?php

use App\Http\Controllers\AnimeController;
use Illuminate\Support\Facades\Route;

Route::get('/import-top-anime', [AnimeController::class, 'importTopAnime']);
Route::get('/anime', [AnimeController::class, 'show']);
