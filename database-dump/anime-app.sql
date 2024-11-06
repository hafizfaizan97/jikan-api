-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: anime-app
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animes`
--

DROP TABLE IF EXISTS `animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mal_id` int NOT NULL,
  `titles` json NOT NULL,
  `slugs` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `animes_mal_id_unique` (`mal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animes`
--

LOCK TABLES `animes` WRITE;
/*!40000 ALTER TABLE `animes` DISABLE KEYS */;
INSERT INTO `animes` VALUES (1,52991,'{\"en\": \"Frieren: Beyond Journey\'s End\", \"pl\": \"Sousou no Frieren\"}','{\"en\": \"frieren-beyond-journeys-end\", \"pl\": \"sousou-no-frieren\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(2,60022,'{\"en\": \"One Piece Fan Letter\", \"pl\": \"One Piece Fan Letter\"}','{\"en\": \"one-piece-fan-letter\", \"pl\": \"one-piece-fan-letter\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(3,5114,'{\"en\": \"Fullmetal Alchemist: Brotherhood\", \"pl\": \"Fullmetal Alchemist: Brotherhood\"}','{\"en\": \"fullmetal-alchemist-brotherhood\", \"pl\": \"fullmetal-alchemist-brotherhood\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(4,9253,'{\"en\": \"Steins;Gate\", \"pl\": \"Steins;Gate\"}','{\"en\": \"steinsgate\", \"pl\": \"steinsgate\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(5,38524,'{\"en\": \"Attack on Titan Season 3 Part 2\", \"pl\": \"Shingeki no Kyojin Season 3 Part 2\"}','{\"en\": \"attack-on-titan-season-3-part-2\", \"pl\": \"shingeki-no-kyojin-season-3-part-2\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(6,28977,'{\"en\": \"Gintama Season 4\", \"pl\": \"Gintama°\"}','{\"en\": \"gintama-season-4\", \"pl\": \"gintama\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(7,39486,'{\"en\": \"Gintama: The Very Final\", \"pl\": \"Gintama: The Final\"}','{\"en\": \"gintama-the-very-final\", \"pl\": \"gintama-the-final\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(8,9969,'{\"en\": \"Gintama Season 2\", \"pl\": \"Gintama\'\"}','{\"en\": \"gintama-season-2\", \"pl\": \"gintama\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(9,11061,'{\"en\": \"Hunter x Hunter\", \"pl\": \"Hunter x Hunter (2011)\"}','{\"en\": \"hunter-x-hunter\", \"pl\": \"hunter-x-hunter-2011\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(10,15417,'{\"en\": \"Gintama: Enchousen\", \"pl\": \"Gintama\': Enchousen\"}','{\"en\": \"gintama-enchousen\", \"pl\": \"gintama-enchousen\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(11,56784,'{\"en\": \"Bleach: Thousand-Year Blood War - The Conflict\", \"pl\": \"Bleach: Sennen Kessen-hen - Soukoku-tan\"}','{\"en\": \"bleach-thousand-year-blood-war-the-conflict\", \"pl\": \"bleach-sennen-kessen-hen-soukoku-tan\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(12,820,'{\"en\": \"Legend of the Galactic Heroes\", \"pl\": \"Ginga Eiyuu Densetsu\"}','{\"en\": \"legend-of-the-galactic-heroes\", \"pl\": \"ginga-eiyuu-densetsu\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(13,41467,'{\"en\": \"Bleach: Thousand-Year Blood War\", \"pl\": \"Bleach: Sennen Kessen-hen\"}','{\"en\": \"bleach-thousand-year-blood-war\", \"pl\": \"bleach-sennen-kessen-hen\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(14,43608,'{\"en\": \"Kaguya-sama: Love is War -Ultra Romantic-\", \"pl\": \"Kaguya-sama wa Kokurasetai: Ultra Romantic\"}','{\"en\": \"kaguya-sama-love-is-war-ultra-romantic\", \"pl\": \"kaguya-sama-wa-kokurasetai-ultra-romantic\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(15,34096,'{\"en\": \"Gintama Season 5\", \"pl\": \"Gintama.\"}','{\"en\": \"gintama-season-5\", \"pl\": \"gintama\"}','2024-11-06 15:56:29','2024-11-06 15:56:29'),(16,42938,'{\"en\": \"Fruits Basket: The Final Season\", \"pl\": \"Fruits Basket: The Final\"}','{\"en\": \"fruits-basket-the-final-season\", \"pl\": \"fruits-basket-the-final\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(17,4181,'{\"en\": \"Clannad: After Story\", \"pl\": \"Clannad: After Story\"}','{\"en\": \"clannad-after-story\", \"pl\": \"clannad-after-story\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(18,918,'{\"en\": \"Gintama\", \"pl\": \"Gintama\"}','{\"en\": \"gintama\", \"pl\": \"gintama\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(19,28851,'{\"en\": \"A Silent Voice\", \"pl\": \"Koe no Katachi\"}','{\"en\": \"a-silent-voice\", \"pl\": \"koe-no-katachi\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(20,35180,'{\"en\": \"March Comes In Like a Lion 2nd Season\", \"pl\": \"3-gatsu no Lion 2nd Season\"}','{\"en\": \"march-comes-in-like-a-lion-2nd-season\", \"pl\": \"3-gatsu-no-lion-2nd-season\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(21,2904,'{\"en\": \"Code Geass: Lelouch of the Rebellion R2\", \"pl\": \"Code Geass: Hangyaku no Lelouch R2\"}','{\"en\": \"code-geass-lelouch-of-the-rebellion-r2\", \"pl\": \"code-geass-hangyaku-no-lelouch-r2\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(22,15335,'{\"en\": \"Gintama: The Movie: The Final Chapter: Be Forever Yorozuya\", \"pl\": \"Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien Nare\"}','{\"en\": \"gintama-the-movie-the-final-chapter-be-forever-yorozuya\", \"pl\": \"gintama-movie-2-kanketsu-hen-yorozuya-yo-eien-nare\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(23,58125,'{\"en\": \"Look Back\", \"pl\": \"Look Back\"}','{\"en\": \"look-back\", \"pl\": \"look-back\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(24,54492,'{\"en\": \"The Apothecary Diaries\", \"pl\": \"Kusuriya no Hitorigoto\"}','{\"en\": \"the-apothecary-diaries\", \"pl\": \"kusuriya-no-hitorigoto\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(25,37491,'{\"en\": \"Gintama.: Silver Soul Arc - Second Half War\", \"pl\": \"Gintama.: Shirogane no Tamashii-hen - Kouhan-sen\"}','{\"en\": \"gintama-silver-soul-arc-second-half-war\", \"pl\": \"gintama-shirogane-no-tamashii-hen-kouhan-sen\"}','2024-11-06 15:56:30','2024-11-06 15:56:30'),(26,19,'{\"en\": \"Monster\", \"pl\": \"Monster\"}','{\"en\": \"monster\", \"pl\": \"monster\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(27,54857,'{\"en\": \"Re:ZERO -Starting Life in Another World- Season 3\", \"pl\": \"Re:Zero kara Hajimeru Isekai Seikatsu 3rd Season\"}','{\"en\": \"rezero-starting-life-in-another-world-season-3\", \"pl\": \"rezero-kara-hajimeru-isekai-seikatsu-3rd-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(28,51535,'{\"en\": \"Attack on Titan: Final Season - The Final Chapters\", \"pl\": \"Shingeki no Kyojin: The Final Season - Kanketsu-hen\"}','{\"en\": \"attack-on-titan-final-season-the-final-chapters\", \"pl\": \"shingeki-no-kyojin-the-final-season-kanketsu-hen\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(29,35247,'{\"en\": \"Owarimonogatari Second Season\", \"pl\": \"Owarimonogatari 2nd Season\"}','{\"en\": \"owarimonogatari-second-season\", \"pl\": \"owarimonogatari-2nd-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(30,37987,'{\"en\": \"Violet Evergarden: The Movie\", \"pl\": \"Violet Evergarden Movie\"}','{\"en\": \"violet-evergarden-the-movie\", \"pl\": \"violet-evergarden-movie\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(31,40682,'{\"en\": \"Kingdom: Season 3\", \"pl\": \"Kingdom 3rd Season\"}','{\"en\": \"kingdom-season-3\", \"pl\": \"kingdom-3rd-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(32,32281,'{\"en\": \"Your Name.\", \"pl\": \"Kimi no Na wa.\"}','{\"en\": \"your-name\", \"pl\": \"kimi-no-na-wa\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(33,49387,'{\"en\": \"Vinland Saga Season 2\", \"pl\": \"Vinland Saga Season 2\"}','{\"en\": \"vinland-saga-season-2\", \"pl\": \"vinland-saga-season-2\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(34,36838,'{\"en\": \"Gintama.: Silver Soul Arc\", \"pl\": \"Gintama.: Shirogane no Tamashii-hen\"}','{\"en\": \"gintama-silver-soul-arc\", \"pl\": \"gintama-shirogane-no-tamashii-hen\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(35,57864,'{\"en\": \"Monogatari Series: Off & Monster Season\", \"pl\": \"Monogatari Series: Off & Monster Season\"}','{\"en\": \"monogatari-series-off-monster-season\", \"pl\": \"monogatari-series-off-monster-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(36,55690,'{\"en\": \"The Dangers in My Heart Season 2\", \"pl\": \"Boku no Kokoro no Yabai Yatsu 2nd Season\"}','{\"en\": \"the-dangers-in-my-heart-season-2\", \"pl\": \"boku-no-kokoro-no-yabai-yatsu-2nd-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(37,37510,'{\"en\": \"Mob Psycho 100 II\", \"pl\": \"Mob Psycho 100 II\"}','{\"en\": \"mob-psycho-100-ii\", \"pl\": \"mob-psycho-100-ii\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(38,51009,'{\"en\": \"Jujutsu Kaisen Season 2\", \"pl\": \"Jujutsu Kaisen 2nd Season\"}','{\"en\": \"jujutsu-kaisen-season-2\", \"pl\": \"jujutsu-kaisen-2nd-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(39,31758,'{\"en\": \"Kizumonogatari Part 3: Cold-Blooded\", \"pl\": \"Kizumonogatari III: Reiketsu-hen\"}','{\"en\": \"kizumonogatari-part-3-cold-blooded\", \"pl\": \"kizumonogatari-iii-reiketsu-hen\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(40,40028,'{\"en\": \"Attack on Titan: Final Season\", \"pl\": \"Shingeki no Kyojin: The Final Season\"}','{\"en\": \"attack-on-titan-final-season\", \"pl\": \"shingeki-no-kyojin-the-final-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(41,32935,'{\"en\": \"Haikyu!! 3rd Season\", \"pl\": \"Haikyuu!! Karasuno Koukou vs. Shiratorizawa Gakuen Koukou\"}','{\"en\": \"haikyu-3rd-season\", \"pl\": \"haikyuu-karasuno-koukou-vs-shiratorizawa-gakuen-koukou\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(42,47917,'{\"en\": \"Bocchi the Rock!\", \"pl\": \"Bocchi the Rock!\"}','{\"en\": \"bocchi-the-rock\", \"pl\": \"bocchi-the-rock\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(43,263,'{\"en\": \"Fighting Spirit\", \"pl\": \"Hajime no Ippo\"}','{\"en\": \"fighting-spirit\", \"pl\": \"hajime-no-ippo\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(44,199,'{\"en\": \"Spirited Away\", \"pl\": \"Sen to Chihiro no Kamikakushi\"}','{\"en\": \"spirited-away\", \"pl\": \"sen-to-chihiro-no-kamikakushi\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(45,17074,'{\"en\": \"Monogatari Series: Second Season\", \"pl\": \"Monogatari Series: Second Season\"}','{\"en\": \"monogatari-series-second-season\", \"pl\": \"monogatari-series-second-season\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(46,37521,'{\"en\": \"Vinland Saga\", \"pl\": \"Vinland Saga\"}','{\"en\": \"vinland-saga\", \"pl\": \"vinland-saga\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(47,48583,'{\"en\": \"Attack on Titan: Final Season Part 2\", \"pl\": \"Shingeki no Kyojin: The Final Season Part 2\"}','{\"en\": \"attack-on-titan-final-season-part-2\", \"pl\": \"shingeki-no-kyojin-the-final-season-part-2\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(48,52198,'{\"en\": \"Kaguya-sama: Love is War -The First Kiss That Never Ends-\", \"pl\": \"Kaguya-sama wa Kokurasetai: First Kiss wa Owaranai\"}','{\"en\": \"kaguya-sama-love-is-war-the-first-kiss-that-never-ends\", \"pl\": \"kaguya-sama-wa-kokurasetai-first-kiss-wa-owaranai\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(49,1,'{\"en\": \"Cowboy Bebop\", \"pl\": \"Cowboy Bebop\"}','{\"en\": \"cowboy-bebop\", \"pl\": \"cowboy-bebop\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(50,55016,'{\"en\": \"Idol\", \"pl\": \"Idol\"}','{\"en\": \"idol\", \"pl\": \"idol\"}','2024-11-06 15:56:32','2024-11-06 15:56:32'),(51,45649,'{\"en\": \"The First Slam Dunk\", \"pl\": \"The First Slam Dunk\"}','{\"en\": \"the-first-slam-dunk\", \"pl\": \"the-first-slam-dunk\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(52,53223,'{\"en\": \"Kingdom: Season 5\", \"pl\": \"Kingdom 5th Season\"}','{\"en\": \"kingdom-season-5\", \"pl\": \"kingdom-5th-season\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(53,2921,'{\"en\": \"Tomorrow\'s Joe 2\", \"pl\": \"Ashita no Joe 2\"}','{\"en\": \"tomorrows-joe-2\", \"pl\": \"ashita-no-joe-2\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(54,39894,'{\"en\": \"Sound! Euphonium 3\", \"pl\": \"Hibike! Euphonium 3\"}','{\"en\": \"sound-euphonium-3\", \"pl\": \"hibike-euphonium-3\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(55,50160,'{\"en\": \"Kingdom: Season 4\", \"pl\": \"Kingdom 4th Season\"}','{\"en\": \"kingdom-season-4\", \"pl\": \"kingdom-4th-season\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(56,44074,'{\"en\": \"Link Click\", \"pl\": \"Shiguang Dailiren\"}','{\"en\": \"link-click\", \"pl\": \"shiguang-dailiren\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(57,47778,'{\"en\": \"Demon Slayer: Kimetsu no Yaiba Entertainment District Arc\", \"pl\": \"Kimetsu no Yaiba: Yuukaku-hen\"}','{\"en\": \"demon-slayer-kimetsu-no-yaiba-entertainment-district-arc\", \"pl\": \"kimetsu-no-yaiba-yuukaku-hen\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(58,24701,'{\"en\": \"Mushi-shi: Next Passage Part 2\", \"pl\": \"Mushishi Zoku Shou 2nd Season\"}','{\"en\": \"mushi-shi-next-passage-part-2\", \"pl\": \"mushishi-zoku-shou-2nd-season\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(59,21,'{\"en\": \"One Piece\", \"pl\": \"One Piece\"}','{\"en\": \"one-piece\", \"pl\": \"one-piece\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(60,33095,'{\"en\": \"Descending Stories: Showa Genroku Rakugo Shinju\", \"pl\": \"Shouwa Genroku Rakugo Shinjuu: Sukeroku Futatabi-hen\"}','{\"en\": \"descending-stories-showa-genroku-rakugo-shinju\", \"pl\": \"shouwa-genroku-rakugo-shinjuu-sukeroku-futatabi-hen\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(61,50172,'{\"en\": \"Mob Psycho 100 III\", \"pl\": \"Mob Psycho 100 III\"}','{\"en\": \"mob-psycho-100-iii\", \"pl\": \"mob-psycho-100-iii\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(62,48569,'{\"en\": \"86 Eighty-Six Part 2\", \"pl\": \"86 Part 2\"}','{\"en\": \"86-eighty-six-part-2\", \"pl\": \"86-part-2\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(63,53998,'{\"en\": \"Bleach: Thousand-Year Blood War - The Separation\", \"pl\": \"Bleach: Sennen Kessen-hen - Ketsubetsu-tan\"}','{\"en\": \"bleach-thousand-year-blood-war-the-separation\", \"pl\": \"bleach-sennen-kessen-hen-ketsubetsu-tan\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(64,1575,'{\"en\": \"Code Geass: Lelouch of the Rebellion\", \"pl\": \"Code Geass: Hangyaku no Lelouch\"}','{\"en\": \"code-geass-lelouch-of-the-rebellion\", \"pl\": \"code-geass-hangyaku-no-lelouch\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(65,44,'{\"en\": \"Samurai X: Trust and Betrayal\", \"pl\": \"Rurouni Kenshin: Meiji Kenkaku Romantan - Tsuioku-hen\"}','{\"en\": \"samurai-x-trust-and-betrayal\", \"pl\": \"rurouni-kenshin-meiji-kenkaku-romantan-tsuioku-hen\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(66,21939,'{\"en\": \"Mushi-shi: Next Passage Part 1\", \"pl\": \"Mushishi Zoku Shou\"}','{\"en\": \"mushi-shi-next-passage-part-1\", \"pl\": \"mushishi-zoku-shou\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(67,55255,'{\"en\": \"Alien Stage\", \"pl\": \"Alien Stage\"}','{\"en\": \"alien-stage\", \"pl\": \"alien-stage\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(68,33352,'{\"en\": \"Violet Evergarden\", \"pl\": \"Violet Evergarden\"}','{\"en\": \"violet-evergarden\", \"pl\": \"violet-evergarden\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(69,245,'{\"en\": \"Great Teacher Onizuka\", \"pl\": \"Great Teacher Onizuka\"}','{\"en\": \"great-teacher-onizuka\", \"pl\": \"great-teacher-onizuka\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(70,40434,'{\"en\": \"The Founder of Diabolism Season 3\", \"pl\": \"Mo Dao Zu Shi: Wanjie Pian\"}','{\"en\": \"the-founder-of-diabolism-season-3\", \"pl\": \"mo-dao-zu-shi-wanjie-pian\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(71,5258,'{\"en\": \"Fighting Spirit: New Challenger\", \"pl\": \"Hajime no Ippo: New Challenger\"}','{\"en\": \"fighting-spirit-new-challenger\", \"pl\": \"hajime-no-ippo-new-challenger\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(72,431,'{\"en\": \"Howl\'s Moving Castle\", \"pl\": \"Howl no Ugoku Shiro\"}','{\"en\": \"howls-moving-castle\", \"pl\": \"howl-no-ugoku-shiro\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(73,50399,'{\"en\": \"Heaven Official\'s Blessing Season 2\", \"pl\": \"Tian Guan Cifu Er\"}','{\"en\": \"heaven-officials-blessing-season-2\", \"pl\": \"tian-guan-cifu-er\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(74,52742,'{\"en\": \"Haikyu!! Movie: The Dumpster Battle\", \"pl\": \"Haikyuu!! Movie: Gomisuteba no Kessen\"}','{\"en\": \"haikyu-movie-the-dumpster-battle\", \"pl\": \"haikyuu-movie-gomisuteba-no-kessen\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(75,164,'{\"en\": \"Princess Mononoke\", \"pl\": \"Mononoke Hime\"}','{\"en\": \"princess-mononoke\", \"pl\": \"mononoke-hime\"}','2024-11-06 15:56:35','2024-11-06 15:56:35'),(76,33050,'{\"en\": \"Fate/stay night: Heaven\'s Feel - III. Spring Song\", \"pl\": \"Fate/stay night Movie: Heaven\'s Feel - III. Spring Song\"}','{\"en\": \"fatestay-night-heavens-feel-iii-spring-song\", \"pl\": \"fatestay-night-movie-heavens-feel-iii-spring-song\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(77,45576,'{\"en\": \"Mushoku Tensei: Jobless Reincarnation Part 2\", \"pl\": \"Mushoku Tensei: Isekai Ittara Honki Dasu Part 2\"}','{\"en\": \"mushoku-tensei-jobless-reincarnation-part-2\", \"pl\": \"mushoku-tensei-isekai-ittara-honki-dasu-part-2\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(78,46102,'{\"en\": \"Odd Taxi\", \"pl\": \"Odd Taxi\"}','{\"en\": \"odd-taxi\", \"pl\": \"odd-taxi\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(79,457,'{\"en\": \"Mushi-Shi\", \"pl\": \"Mushishi\"}','{\"en\": \"mushi-shi\", \"pl\": \"mushishi\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(80,55791,'{\"en\": \"[Oshi No Ko] Season 2\", \"pl\": \"\\\"Oshi no Ko\\\" 2nd Season\"}','{\"en\": \"oshi-no-ko-season-2\", \"pl\": \"oshi-no-ko-2nd-season\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(81,34599,'{\"en\": \"Made in Abyss\", \"pl\": \"Made in Abyss\"}','{\"en\": \"made-in-abyss\", \"pl\": \"made-in-abyss\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(82,11665,'{\"en\": \"Natsume\'s Book of Friends Season 4\", \"pl\": \"Natsume Yuujinchou Shi\"}','{\"en\": \"natsumes-book-of-friends-season-4\", \"pl\": \"natsume-yuujinchou-shi\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(83,23273,'{\"en\": \"Your Lie in April\", \"pl\": \"Shigatsu wa Kimi no Uso\"}','{\"en\": \"your-lie-in-april\", \"pl\": \"shigatsu-wa-kimi-no-uso\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(84,57334,'{\"en\": \"Dan Da Dan\", \"pl\": \"Dandadan\"}','{\"en\": \"dan-da-dan\", \"pl\": \"dandadan\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(85,54898,'{\"en\": \"Bungo Stray Dogs 5\", \"pl\": \"Bungou Stray Dogs 5th Season\"}','{\"en\": \"bungo-stray-dogs-5\", \"pl\": \"bungou-stray-dogs-5th-season\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(86,2001,'{\"en\": \"Gurren Lagann\", \"pl\": \"Tengen Toppa Gurren Lagann\"}','{\"en\": \"gurren-lagann\", \"pl\": \"tengen-toppa-gurren-lagann\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(87,49413,'{\"en\": \"Link Click Season 2\", \"pl\": \"Shiguang Dailiren II\"}','{\"en\": \"link-click-season-2\", \"pl\": \"shiguang-dailiren-ii\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(88,35760,'{\"en\": \"Attack on Titan Season 3\", \"pl\": \"Shingeki no Kyojin Season 3\"}','{\"en\": \"attack-on-titan-season-3\", \"pl\": \"shingeki-no-kyojin-season-3\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(89,55823,'{\"en\": \"Natsume\'s Book of Friends Season 7\", \"pl\": \"Natsume Yuujinchou Shichi\"}','{\"en\": \"natsumes-book-of-friends-season-7\", \"pl\": \"natsume-yuujinchou-shichi\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(90,40591,'{\"en\": \"Kaguya-sama: Love is War?\", \"pl\": \"Kaguya-sama wa Kokurasetai? Tensai-tachi no Renai Zunousen\"}','{\"en\": \"kaguya-sama-love-is-war\", \"pl\": \"kaguya-sama-wa-kokurasetai-tensai-tachi-no-renai-zunousen\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(91,22135,'{\"en\": \"Ping Pong the Animation\", \"pl\": \"Ping Pong the Animation\"}','{\"en\": \"ping-pong-the-animation\", \"pl\": \"ping-pong-the-animation\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(92,1535,'{\"en\": \"Death Note\", \"pl\": \"Death Note\"}','{\"en\": \"death-note\", \"pl\": \"death-note\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(93,28891,'{\"en\": \"Haikyu!! 2nd Season\", \"pl\": \"Haikyuu!! Second Season\"}','{\"en\": \"haikyu-2nd-season\", \"pl\": \"haikyuu-second-season\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(94,41084,'{\"en\": \"Made in Abyss: The Golden City of the Scorching Sun\", \"pl\": \"Made in Abyss: Retsujitsu no Ougonkyou\"}','{\"en\": \"made-in-abyss-the-golden-city-of-the-scorching-sun\", \"pl\": \"made-in-abyss-retsujitsu-no-ougonkyou\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(95,52701,'{\"en\": \"Delicious in Dungeon\", \"pl\": \"Dungeon Meshi\"}','{\"en\": \"delicious-in-dungeon\", \"pl\": \"dungeon-meshi\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(96,52034,'{\"en\": \"[Oshi No Ko]\", \"pl\": \"\\\"Oshi no Ko\\\"\"}','{\"en\": \"oshi-no-ko\", \"pl\": \"oshi-no-ko\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(97,34591,'{\"en\": \"Natsume\'s Book of Friends Season 6\", \"pl\": \"Natsume Yuujinchou Roku\"}','{\"en\": \"natsumes-book-of-friends-season-6\", \"pl\": \"natsume-yuujinchou-roku\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(98,42310,'{\"en\": \"Cyberpunk: Edgerunners\", \"pl\": \"Cyberpunk: Edgerunners\"}','{\"en\": \"cyberpunk-edgerunners\", \"pl\": \"cyberpunk-edgerunners\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(99,36862,'{\"en\": \"Made in Abyss: Dawn of the Deep Soul\", \"pl\": \"Made in Abyss Movie 3: Fukaki Tamashii no Reimei\"}','{\"en\": \"made-in-abyss-dawn-of-the-deep-soul\", \"pl\": \"made-in-abyss-movie-3-fukaki-tamashii-no-reimei\"}','2024-11-06 15:56:39','2024-11-06 15:56:39'),(100,7311,'{\"en\": \"The Disappearance of Haruhi Suzumiya\", \"pl\": \"Suzumiya Haruhi no Shoushitsu\"}','{\"en\": \"the-disappearance-of-haruhi-suzumiya\", \"pl\": \"suzumiya-haruhi-no-shoushitsu\"}','2024-11-06 15:56:39','2024-11-06 15:56:39');
/*!40000 ALTER TABLE `animes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_11_05_210720_create_animes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('FwucANplzJug0Hw34RruzSQwbwSKJoIEEn1dii1q',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXUyalVVMzE3N2JGc1lkdnhqbFp3S2EzWFg0d2t0NFpzVFFEUE11WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vYW5pbWUtYXBwLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1730927020);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-07  2:10:34
