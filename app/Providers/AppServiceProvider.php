<?php

namespace App\Providers;

use App\Repositories\AnimeRepository;
use App\Repositories\Interfaces\AnimeRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(AnimeRepositoryInterface::class, AnimeRepository::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
