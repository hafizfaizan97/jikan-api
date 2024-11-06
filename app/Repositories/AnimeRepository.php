<?php

namespace App\Repositories;

use App\Models\Anime;
use App\Repositories\Interfaces\AnimeRepositoryInterface;

class AnimeRepository implements AnimeRepositoryInterface
{
    // Stores anime data if mal_id is unique; otherwise, updates existing record.
    public function saveAnime(array $data): Anime
    {
        return Anime::updateOrCreate(['mal_id' => $data['mal_id']], $data);
    }
    // Searches anime by language-specific slug and returns matching record.
    public function findBySlugAndLang(string $slug, string $lang): ?Anime
    {
        return Anime::whereJsonContains('slugs->'.$lang, $slug)->first();
    }
}
