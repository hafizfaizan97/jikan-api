<?php

use App\Http\Controllers\AnimeController;
use Illuminate\Support\Facades\Route;

// Route to import top 100 anime from Jikan API
Route::get('/import-top-anime', [AnimeController::class, 'importTopAnime']);
// Route to fetch anime by slug and language
Route::get('/anime', [AnimeController::class, 'show']);
