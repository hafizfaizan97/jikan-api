<?php

namespace App\Repositories\Interfaces;

use App\Models\Anime;

interface AnimeRepositoryInterface
{
    // Saves or updates anime record by unique MyAnimeList ID (mal_id).
    public function saveAnime(array $data): Anime;
    // Retrieves anime by slug and language; returns null if not found.
    public function findBySlugAndLang(string $slug, string $lang): ?Anime;
}
