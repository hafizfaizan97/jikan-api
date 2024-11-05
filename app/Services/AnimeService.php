<?php

namespace App\Services;

use App\Repositories\Interfaces\AnimeRepositoryInterface;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Client\RequestException;

class AnimeService
{
    protected $animeRepository;

    public function __construct(AnimeRepositoryInterface $animeRepository)
    {
        $this->animeRepository = $animeRepository;
    }

    public function importTopAnime(): void
    {
        try {
            $response = Http::timeout(10)->get('https://api.jikan.moe/v4/top/anime', ['limit' => 100]);
            $animes = $response->json('data');

            foreach ($animes as $anime) {
                $data = [
                    'mal_id' => $anime['mal_id'],
                    'titles' => [
                        'en' => $anime['title_english'] ?? $anime['title'],
                        'pl' => $anime['title']
                    ],
                    'slugs' => [
                        'en' => \Str::slug($anime['title_english'] ?? $anime['title']),
                        'pl' => \Str::slug($anime['title'])
                    ],
                ];

                $this->animeRepository->saveAnime($data);
            }
        } catch (RequestException $e) {
            throw new \Exception("Failed to fetch data from Jikan API: " . $e->getMessage());
        }
    }

    public function findAnimeBySlugAndLang(string $slug, string $lang)
    {
        return $this->animeRepository->findBySlugAndLang($slug, $lang);
    }
}
