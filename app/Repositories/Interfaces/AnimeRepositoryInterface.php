<?php

namespace App\Repositories\Interfaces;

use App\Models\Anime;

interface AnimeRepositoryInterface
{
    public function saveAnime(array $data): Anime;
    public function findBySlugAndLang(string $slug, string $lang): ?Anime;
}
