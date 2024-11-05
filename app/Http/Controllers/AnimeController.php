<?php

namespace App\Http\Controllers;

use App\ApiResponse;
use App\Services\AnimeService;
use Illuminate\Http\Request;

class AnimeController extends Controller
{
    use ApiResponse;
    protected $animeService;

    public function __construct(AnimeService $animeService)
    {
        $this->animeService = $animeService;
    }

    public function importTopAnime()
    {
        try {
            $this->animeService->importTopAnime();
            return $this->successResponse([], 'Anime data imported successfully',201);
        } catch (\Exception $e) {
            return $this->errorResponse('Anime data imported successfully', $e->getMessage(),500);
        }
    }

    public function show(Request $request)
    {
        $slug = $request->query('slug');
        $lang = $request->query('lang');
        $anime = $this->animeService->findAnimeBySlugAndLang($slug, $lang);
        if (!$anime) {
            return $this->errorResponse('Anime not found or language mismatch', [],404);
        }
        return $this->successResponse($anime, 'Data Fetched successfully',200);
    }
}
