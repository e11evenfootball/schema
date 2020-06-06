-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: 11_football
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `fixture_id` int(11) DEFAULT NULL,
  `event_number` int(3) DEFAULT NULL,
  `elapsed` varchar(10) DEFAULT NULL,
  `elapsed_plus` varchar(10) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `teamName` varchar(45) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `player` varchar(45) DEFAULT NULL,
  `assist_id` varchar(10) DEFAULT NULL,
  `assist` varchar(10) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `detail` varchar(45) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fixture`
--

DROP TABLE IF EXISTS `fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixture` (
  `fixture_id` int(11) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `leagueName` varchar(45) DEFAULT NULL,
  `leagueCountry` varchar(45) DEFAULT NULL,
  `leagueFlag` varchar(45) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_timestamp` timestamp NULL DEFAULT NULL,
  `firstHalfStart` timestamp NULL DEFAULT NULL,
  `secondHalfStart` timestamp NULL DEFAULT NULL,
  `round` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `statusShort` varchar(45) DEFAULT NULL,
  `elapsed` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `referee` varchar(45) DEFAULT NULL,
  `fixturecol` varchar(45) DEFAULT NULL,
  `homeTeamID` int(11) DEFAULT NULL,
  `homeTeam_name` varchar(45) DEFAULT NULL,
  `homeTeam_logo` varchar(80) DEFAULT NULL,
  `awayTeamID` int(11) DEFAULT NULL,
  `awayTeam_name` varchar(45) DEFAULT NULL,
  `awayTeam_logo` varchar(80) DEFAULT NULL,
  `goalsHomeTeam` varchar(45) DEFAULT NULL,
  `goalsAwayTeam` varchar(45) DEFAULT NULL,
  `score_halftime` varchar(45) DEFAULT NULL,
  `score_fulltime` varchar(45) DEFAULT NULL,
  `score_extratime` varchar(45) DEFAULT NULL,
  `score_penalty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fixture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fixture_statistics`
--

DROP TABLE IF EXISTS `fixture_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixture_statistics` (
  `fixture_id` int(11) NOT NULL,
  `shots_on_goal_home` int(3) DEFAULT NULL,
  `shots_on_goal_away` int(3) DEFAULT NULL,
  `shots_off_goal_home` int(3) DEFAULT NULL,
  `shots_off_goal_away` int(3) DEFAULT NULL,
  `total_shots_home` int(3) DEFAULT NULL,
  `total_shots_away` int(3) DEFAULT NULL,
  `blocked_shots_home` int(3) DEFAULT NULL,
  `blocked_shots_away` int(3) DEFAULT NULL,
  `shots_insidebox_home` int(3) DEFAULT NULL,
  `shots_insidebox_away` int(3) DEFAULT NULL,
  `shots_outsidebox_home` int(3) DEFAULT NULL,
  `shots_outsidebox_away` int(3) DEFAULT NULL,
  `fouls_home` int(3) DEFAULT NULL,
  `fouls_away` int(3) DEFAULT NULL,
  `corner_kicks_home` int(3) DEFAULT NULL,
  `corner_kicks_away` int(3) DEFAULT NULL,
  `offsides_home` int(3) DEFAULT NULL,
  `offsides_away` int(3) DEFAULT NULL,
  `ball_possession_home` int(3) DEFAULT NULL,
  `ball_possession_away` int(3) DEFAULT NULL,
  `yellow_cards_home` int(3) DEFAULT NULL,
  `yellow_cards_away` int(3) DEFAULT NULL,
  `red_cards_home` int(3) DEFAULT NULL,
  `red_cards_away` int(3) DEFAULT NULL,
  `goalkeeper_saves_home` int(3) DEFAULT NULL,
  `goalkeeper_saves_away` int(3) DEFAULT NULL,
  `total_passes_home` int(4) DEFAULT NULL,
  `total_passes_away` int(4) DEFAULT NULL,
  `passes_accurate_home` int(4) DEFAULT NULL,
  `passes_accurate_away` int(4) DEFAULT NULL,
  `passes_percent_home` varchar(45) DEFAULT NULL,
  `passes_percent_away` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fixture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_invitations`
--

DROP TABLE IF EXISTS `group_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_invitations` (
  `id` int(11) NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `inviteeID` int(11) DEFAULT NULL,
  `invitorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leagues`
--

DROP TABLE IF EXISTS `leagues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leagues` (
  `league_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `season_start` date DEFAULT NULL,
  `season_end` date DEFAULT NULL,
  `logo` text,
  `flag` text,
  `standings` int(10) DEFAULT NULL,
  `is_current` int(10) DEFAULT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` int(10) NOT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `number` int(3) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(45) DEFAULT NULL,
  `birth_country` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `injured` varchar(45) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `team_name` varchar(45) DEFAULT NULL,
  `league` varchar(45) DEFAULT NULL,
  `season` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='						';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_statistics`
--

DROP TABLE IF EXISTS `player_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_statistics` (
  `id` int(11) NOT NULL,
  `fixture_id` int(11) DEFAULT NULL,
  `updateAt` int(10) DEFAULT NULL,
  `player_id` int(10) DEFAULT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `team_name` varchar(45) DEFAULT NULL,
  `player_number` int(5) DEFAULT NULL,
  `player_position` varchar(5) DEFAULT NULL,
  `player_rating` varchar(5) DEFAULT NULL,
  `player_minutes_played` int(5) DEFAULT NULL,
  `player_captain` varchar(10) DEFAULT NULL,
  `player_substitute` varchar(10) DEFAULT NULL,
  `player_offsides` varchar(10) DEFAULT NULL,
  `player_shots_total` int(3) DEFAULT NULL,
  `player_shots_on` int(3) DEFAULT NULL,
  `player_goals_total` int(3) DEFAULT NULL,
  `player_goals_conceded` int(3) DEFAULT NULL,
  `player_goals_assists` int(3) DEFAULT NULL,
  `player_passes_total` int(3) DEFAULT NULL,
  `player_passes_key` int(3) DEFAULT NULL,
  `player_passes_accuracy` int(3) DEFAULT NULL,
  `player_tackles_total` int(3) DEFAULT NULL,
  `player_tackles_blocks` int(3) DEFAULT NULL,
  `player_tackles_interceptions` int(3) DEFAULT NULL,
  `player_duels_total` int(3) DEFAULT NULL,
  `player_duels_won` int(3) DEFAULT NULL,
  `player_dribbles_attempts` int(3) DEFAULT NULL,
  `player_dribbles_success` int(3) DEFAULT NULL,
  `player_dribbles_past` int(3) DEFAULT NULL,
  `player_fouls_drawn` int(3) DEFAULT NULL,
  `player_fouls_committed` int(3) DEFAULT NULL,
  `player_cards_yellow` int(3) DEFAULT NULL,
  `player_cards_red` int(3) DEFAULT NULL,
  `player_penalty_won` int(3) DEFAULT NULL,
  `player_penalty_committed` int(3) DEFAULT NULL,
  `player_penalty_success` int(3) DEFAULT NULL,
  `player_penalty_missed` int(3) DEFAULT NULL,
  `player_penalty_saved` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text` text,
  `points` int(11) DEFAULT NULL,
  `correctAns` varchar(45) DEFAULT NULL,
  `isRandom` varchar(45) DEFAULT NULL,
  `isManual` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `standings`
--

DROP TABLE IF EXISTS `standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standings` (
  `team_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `teamName` varchar(45) DEFAULT NULL,
  `logo` text,
  `group` tinytext,
  `forme` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `matchsPlayed` int(11) DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `goalsFor` int(11) DEFAULT NULL,
  `goalsAgainst` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `code` int(10) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `founded` year(4) DEFAULT NULL,
  `venue_name` text,
  `venue_surface` varchar(45) DEFAULT NULL,
  `venue_address` text,
  `venue_city` text,
  `venue_capacity` int(10) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top_scorers`
--

DROP TABLE IF EXISTS `top_scorers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_scorers` (
  `id` int(11) NOT NULL,
  `player_id` int(10) DEFAULT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `team_id` int(10) DEFAULT NULL,
  `team_name` varchar(45) DEFAULT NULL,
  `games_appearances` int(10) DEFAULT NULL,
  `games_minutes_played` int(11) DEFAULT NULL,
  `goals_total` int(3) DEFAULT NULL,
  `goals_assists` int(3) DEFAULT NULL,
  `goals_conceded` int(3) DEFAULT NULL,
  `shots_total` int(3) DEFAULT NULL,
  `shots_on` int(3) DEFAULT NULL,
  `penalty_won` int(3) DEFAULT NULL,
  `penalty_committed` int(3) DEFAULT NULL,
  `penalty_success` int(3) DEFAULT NULL,
  `penalty_missed` int(3) DEFAULT NULL,
  `penalty_saved` int(3) DEFAULT NULL,
  `cards_yellow` int(3) DEFAULT NULL,
  `cards_second_yellow` int(3) DEFAULT NULL,
  `cards_red` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ipAddress` varchar(45) DEFAULT NULL,
  `group1_id` int(10) DEFAULT NULL,
  `group2_id` int(10) DEFAULT NULL,
  `group3_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `useranswers`
--

DROP TABLE IF EXISTS `useranswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useranswers` (
  `id` int(11) NOT NULL,
  `fixture_id` varchar(45) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-06 11:43:26
