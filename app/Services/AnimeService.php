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

    // Calls Jikan API to retrieve top 100 anime in 4 pages (25 per page).
    // Transforms and saves data to the database via AnimeRepository.
    public function importTopAnime(): void
    {
        try {
            $totalAnime = 100;
            $limit = 25;
            $pages = ceil($totalAnime / $limit);
            for ($page = 1; $page <= $pages; $page++) {
                $response = Http::timeout(10)->get('https://api.jikan.moe/v4/top/anime', [
                    'limit' => $limit,
                    'page' => $page,
                ]);

                if ($response->failed()) {
                    throw new \Exception("Failed to fetch data from Jikan API: " . $response->body());
                }

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
            }
        } catch (RequestException $e) {
            throw new \Exception("Failed to fetch data from Jikan API: " . $e->getMessage());
        }
    }

    // Uses AnimeRepository to fetch anime based on provided slug and language.
    public function findAnimeBySlugAndLang(string $slug, string $lang)
    {
        return $this->animeRepository->findBySlugAndLang($slug, $lang);
    }
}
