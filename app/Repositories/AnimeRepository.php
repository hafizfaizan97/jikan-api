<?php

namespace App\Repositories;

use App\Models\Anime;
use App\Repositories\Interfaces\AnimeRepositoryInterface;

class AnimeRepository implements AnimeRepositoryInterface
{
    public function saveAnime(array $data): Anime
    {
        return Anime::updateOrCreate(['mal_id' => $data['mal_id']], $data);
    }

    public function findBySlugAndLang(string $slug, string $lang): ?Anime
    {
        return Anime::whereJsonContains('slugs->'.$lang, $slug)->first();
    }
}
