/*
SQLyog Community v12.09 (64 bit)
MySQL - 5.5.9-log : Database - characters
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `account_achievement` */

DROP TABLE IF EXISTS `account_achievement`;

CREATE TABLE `account_achievement` (
  `account` int(10) unsigned NOT NULL,
  `first_guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`account`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account_achievement` */

/*Table structure for table `account_achievement_criteria_progress` */

DROP TABLE IF EXISTS `account_achievement_criteria_progress`;

CREATE TABLE `account_achievement_criteria_progress` (
  `account` int(10) unsigned NOT NULL DEFAULT '0',
  `criteria` smallint(5) unsigned NOT NULL DEFAULT '0',
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_achievement_criteria_progress` */

insert  into `account_achievement_criteria_progress`(`account`,`criteria`,`counter`,`date`) values (2,18735,15,1504731791),(2,22344,15,1504731791),(2,24233,1,1504731525),(2,24237,1,1504731525),(2,24247,4,1504732384),(2,24251,1,1504731525),(2,24259,4,1504732384),(2,24263,1,1504731525),(2,24271,4,1504732384);

/*Table structure for table `account_achievement_criteria_progress_v2` */

DROP TABLE IF EXISTS `account_achievement_criteria_progress_v2`;

CREATE TABLE `account_achievement_criteria_progress_v2` (
  `account` int(10) unsigned NOT NULL DEFAULT '0',
  `criteria` smallint(5) unsigned NOT NULL DEFAULT '0',
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_achievement_criteria_progress_v2` */

/*Table structure for table `account_achievement_progress` */

DROP TABLE IF EXISTS `account_achievement_progress`;

CREATE TABLE `account_achievement_progress` (
  `account` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`account`,`criteria`),
  KEY `Account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account_achievement_progress` */

/*Table structure for table `account_battle_pet` */

DROP TABLE IF EXISTS `account_battle_pet`;

CREATE TABLE `account_battle_pet` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `accountId` int(10) unsigned NOT NULL DEFAULT '0',
  `species` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(16) NOT NULL DEFAULT '',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `xp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health` smallint(5) unsigned NOT NULL DEFAULT '0',
  `quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `breed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_battle_pet` */

/*Table structure for table `account_battle_pet_declinedname` */

DROP TABLE IF EXISTS `account_battle_pet_declinedname`;

CREATE TABLE `account_battle_pet_declinedname` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `accountId` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_battle_pet_declinedname` */

/*Table structure for table `account_battle_pet_slots` */

DROP TABLE IF EXISTS `account_battle_pet_slots`;

CREATE TABLE `account_battle_pet_slots` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0',
  `slot1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_battle_pet_slots` */

/*Table structure for table `account_data` */

DROP TABLE IF EXISTS `account_data`;

CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `account_data` */

/*Table structure for table `account_instance_times` */

DROP TABLE IF EXISTS `account_instance_times`;

CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_instance_times` */

/*Table structure for table `account_tutorial` */

DROP TABLE IF EXISTS `account_tutorial`;

CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_tutorial` */

insert  into `account_tutorial`(`accountId`,`tut0`,`tut1`,`tut2`,`tut3`,`tut4`,`tut5`,`tut6`,`tut7`) values (2,9437235,8389762,0,0,0,0,0,0);

/*Table structure for table `addons` */

DROP TABLE IF EXISTS `addons`;

CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

/*Data for the table `addons` */

insert  into `addons`(`name`,`crc`) values ('Blizzard_AchievementUI',1276933997),('Blizzard_ArchaeologyUI',1276933997),('Blizzard_ArenaUI',1276933997),('Blizzard_AuctionUI',1276933997),('Blizzard_AuthChallengeUI',1276933997),('Blizzard_BarbershopUI',1276933997),('Blizzard_BattlefieldMinimap',1276933997),('Blizzard_BindingUI',1276933997),('Blizzard_BlackMarketUI',1276933997),('Blizzard_Calendar',1276933997),('Blizzard_ChallengesUI',1276933997),('Blizzard_ClientSavedVariables',1276933997),('Blizzard_CombatLog',1276933997),('Blizzard_CombatText',1276933997),('Blizzard_CompactRaidFrames',1276933997),('Blizzard_CUFProfiles',1276933997),('Blizzard_DebugTools',1276933997),('Blizzard_EncounterJournal',1276933997),('Blizzard_GlyphUI',1276933997),('Blizzard_GMChatUI',1276933997),('Blizzard_GMSurveyUI',1276933997),('Blizzard_GuildBankUI',1276933997),('Blizzard_GuildControlUI',1276933997),('Blizzard_GuildUI',1276933997),('Blizzard_InspectUI',1276933997),('Blizzard_ItemAlterationUI',1276933997),('Blizzard_ItemSocketingUI',1276933997),('Blizzard_ItemUpgradeUI',1276933997),('Blizzard_LookingForGuildUI',1276933997),('Blizzard_MacroUI',1276933997),('Blizzard_MovePad',1276933997),('Blizzard_PetBattleUI',1276933997),('Blizzard_PetJournal',1276933997),('Blizzard_PVPUI',1276933997),('Blizzard_QuestChoice',1276933997),('Blizzard_RaidUI',1276933997),('Blizzard_ReforgingUI',1276933997),('Blizzard_StoreUI',1276933997),('Blizzard_TalentUI',1276933997),('Blizzard_TimeManager',1276933997),('Blizzard_TokenUI',1276933997),('Blizzard_TradeSkillUI',1276933997),('Blizzard_TrainerUI',1276933997),('Blizzard_VoidStorageUI',1276933997);

/*Table structure for table `arena_team` */

DROP TABLE IF EXISTS `arena_team`;

CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`),
  KEY `idx_type` (`type`),
  KEY `idx_rating` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `arena_team` */

/*Table structure for table `arena_team_member` */

DROP TABLE IF EXISTS `arena_team_member`;

CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`),
  KEY `idx_guid` (`guid`),
  KEY `idx_arenaTeamId` (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `arena_team_member` */

/*Table structure for table `auctionhouse` */

DROP TABLE IF EXISTS `auctionhouse`;

CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deposit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auctionhouse` */

/*Table structure for table `autobroadcast` */

DROP TABLE IF EXISTS `autobroadcast`;

CREATE TABLE `autobroadcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `autobroadcast` */

/*Table structure for table `battle_pet_item_data` */

DROP TABLE IF EXISTS `battle_pet_item_data`;

CREATE TABLE `battle_pet_item_data` (
  `itemId` int(10) unsigned NOT NULL DEFAULT '0',
  `speciesId` int(10) unsigned NOT NULL DEFAULT '0',
  `breedData` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `battle_pet_item_data` */

/*Table structure for table `blackmarket` */

DROP TABLE IF EXISTS `blackmarket`;

CREATE TABLE `blackmarket` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Identifier',
  `templateId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Reference to world.blackmarket_template',
  `startTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Start time of the bid',
  `bid` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Amount of the actual bid',
  `bidder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Player guid (highest bid)',
  `bidderCount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blackmarket` */

insert  into `blackmarket`(`id`,`templateId`,`startTime`,`bid`,`bidder`,`bidderCount`) values (1,40,1504731321,100000000,0,0),(2,42,1504731287,100000000,0,0),(3,78,1504731288,150000000,0,0),(4,64,1504731301,150000000,0,0),(5,31,1504731351,100000000,0,0),(6,56,1504731352,100000000,0,0),(7,30,1504731342,100000000,0,0),(8,93,1504731303,150000000,0,0),(9,41,1504731346,100000000,0,0),(10,54,1504731298,100000000,0,0);

/*Table structure for table `bugreport` */

DROP TABLE IF EXISTS `bugreport`;

CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

/*Data for the table `bugreport` */

/*Table structure for table `channels` */

DROP TABLE IF EXISTS `channels`;

CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

/*Data for the table `channels` */

/*Table structure for table `character_account_data` */

DROP TABLE IF EXISTS `character_account_data`;

CREATE TABLE `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_account_data` */

insert  into `character_account_data`(`guid`,`type`,`time`,`data`) values (1,1,1504731524,'SET autoQuestPopUps \"v##$$]C###\"\r\nSET trackedQuests \"v$]C\"\r\nSET trackedAchievements \"v\"\r\nSET cameraSavedDistance \"5.550000\"\r\nSET cameraSavedPitch \"27.600004\"\r\nSET minimapTrackedInfov2 \"229384\"\r\nSET minimapShapeshiftTracking \"v\"\r\nSET reputationsCollapsed \"v##$\"\r\nSET activeCUFProfile \"Основной\"\r\nSET EJLootClass \"8\"\r\n'),(1,7,1504731525,'VERSION 5\n\nADDEDVERSION 19\n\nCHANNELS\nEND\n\nZONECHANNELS 35651587\n\nCOLORS\n\nSYSTEM 255 255 0 N\nSAY 255 255 255 N\nPARTY 170 170 255 N\nRAID 255 127 0 N\nGUILD 64 255 64 N\nOFFICER 64 192 64 N\nYELL 255 64 64 N\nWHISPER 255 128 255 N\nWHISPER_FOREIGN 255 128 255 N\nWHISPER_INFORM 255 128 255 N\nEMOTE 255 128 64 N\nTEXT_EMOTE 255 128 64 N\nMONSTER_SAY 255 255 159 N\nMONSTER_PARTY 170 170 255 N\nMONSTER_YELL 255 64 64 N\nMONSTER_WHISPER 255 181 235 N\nMONSTER_EMOTE 255 128 64 N\nCHANNEL 255 192 192 N\nCHANNEL_JOIN 192 128 128 N\nCHANNEL_LEAVE 192 128 128 N\nCHANNEL_LIST 192 128 128 N\nCHANNEL_NOTICE 192 192 192 N\nCHANNEL_NOTICE_USER 192 192 192 N\nAFK 255 128 255 N\nDND 255 128 255 N\nIGNORED 255 0 0 N\nSKILL 85 85 255 N\nLOOT 0 170 0 N\nMONEY 255 255 0 N\nOPENING 128 128 255 N\nTRADESKILLS 255 255 255 N\nPET_INFO 128 128 255 N\nCOMBAT_MISC_INFO 128 128 255 N\nCOMBAT_XP_GAIN 111 111 255 N\nCOMBAT_HONOR_GAIN 224 202 10 N\nCOMBAT_FACTION_CHANGE 128 128 255 N\nBG_SYSTEM_NEUTRAL 255 120 10 N\nBG_SYSTEM_ALLIANCE 0 174 239 N\nBG_SYSTEM_HORDE 255 0 0 N\nRAID_LEADER 255 72 9 N\nRAID_WARNING 255 72 0 N\nRAID_BOSS_EMOTE 255 221 0 N\nRAID_BOSS_WHISPER 255 221 0 N\nFILTERED 255 0 0 N\nRESTRICTED 255 0 0 N\nBATTLENET 255 255 255 N\nACHIEVEMENT 255 255 0 N\nGUILD_ACHIEVEMENT 64 255 64 N\nARENA_POINTS 255 255 255 N\nPARTY_LEADER 118 200 255 N\nTARGETICONS 255 255 0 N\nBN_WHISPER 0 255 246 N\nBN_WHISPER_INFORM 0 255 246 N\nBN_CONVERSATION 0 177 240 N\nBN_CONVERSATION_NOTICE 0 177 240 N\nBN_CONVERSATION_LIST 0 177 240 N\nBN_INLINE_TOAST_ALERT 130 197 255 N\nBN_INLINE_TOAST_BROADCAST 130 197 255 N\nBN_INLINE_TOAST_BROADCAST_INFORM 130 197 255 N\nBN_INLINE_TOAST_CONVERSATION 130 197 255 N\nBN_WHISPER_PLAYER_OFFLINE 255 255 0 N\nCOMBAT_GUILD_XP_GAIN 111 111 255 N\nCURRENCY 0 170 0 N\nQUEST_BOSS_EMOTE 255 128 64 N\nPET_BATTLE_COMBAT_LOG 231 222 171 N\nPET_BATTLE_INFO 225 222 93 N\nINSTANCE_CHAT 255 127 0 N\nINSTANCE_CHAT_LEADER 255 72 9 N\nCHANNEL1 255 192 192 N\nCHANNEL2 255 192 192 N\nCHANNEL3 255 192 192 N\nCHANNEL4 255 192 192 N\nCHANNEL5 255 192 192 N\nCHANNEL6 255 192 192 N\nCHANNEL7 255 192 192 N\nCHANNEL8 255 192 192 N\nCHANNEL9 255 192 192 N\nCHANNEL10 255 192 192 N\nEND\n\nWINDOW 1\nNAME Общий\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 1\nSHOWN 1\nMESSAGES\nSYSTEM\nSYSTEM_NOMENU\nSAY\nEMOTE\nYELL\nWHISPER\nPARTY\nPARTY_LEADER\nRAID\nRAID_LEADER\nRAID_WARNING\nGUILD\nOFFICER\nMONSTER_SAY\nMONSTER_YELL\nMONSTER_EMOTE\nMONSTER_WHISPER\nMONSTER_BOSS_EMOTE\nMONSTER_BOSS_WHISPER\nERRORS\nAFK\nDND\nIGNORED\nBG_HORDE\nBG_ALLIANCE\nBG_NEUTRAL\nCOMBAT_FACTION_CHANGE\nSKILL\nLOOT\nMONEY\nCHANNEL\nACHIEVEMENT\nGUILD_ACHIEVEMENT\nBN_WHISPER\nBN_WHISPER_INFORM\nBN_CONVERSATION\nBN_INLINE_TOAST_ALERT\nCURRENCY\nBN_WHISPER_PLAYER_OFFLINE\nPET_BATTLE_INFO\nINSTANCE_CHAT\nINSTANCE_CHAT_LEADER\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 35651587\n\nEND\n\nWINDOW 2\nNAME Журнал боя\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 2\nSHOWN 0\nMESSAGES\nOPENING\nTRADESKILLS\nPET_INFO\nCOMBAT_XP_GAIN\nCOMBAT_HONOR_GAIN\nCOMBAT_MISC_INFO\nCOMBAT_GUILD_XP_GAIN\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 3\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 4\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 5\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 6\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 7\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 8\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 9\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 10\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\n'),(2,1,1504732149,'SET autoQuestPopUps \"v##$&H8###\"\r\nSET trackedQuests \"v&H8\"\r\nSET trackedAchievements \"v\"\r\nSET cameraSavedDistance \"5.550000\"\r\nSET cameraSavedPitch \"8.649996\"\r\nSET minimapTrackedInfov2 \"229384\"\r\nSET minimapShapeshiftTracking \"v\"\r\nSET reputationsCollapsed \"v##$\"\r\nSET activeCUFProfile \"Основной\"\r\nSET EJLootClass \"10\"\r\n'),(2,7,1504732150,'VERSION 5\n\nADDEDVERSION 19\n\nCHANNELS\nEND\n\nZONECHANNELS 35651587\n\nCOLORS\n\nSYSTEM 255 255 0 N\nSAY 255 255 255 N\nPARTY 170 170 255 N\nRAID 255 127 0 N\nGUILD 64 255 64 N\nOFFICER 64 192 64 N\nYELL 255 64 64 N\nWHISPER 255 128 255 N\nWHISPER_FOREIGN 255 128 255 N\nWHISPER_INFORM 255 128 255 N\nEMOTE 255 128 64 N\nTEXT_EMOTE 255 128 64 N\nMONSTER_SAY 255 255 159 N\nMONSTER_PARTY 170 170 255 N\nMONSTER_YELL 255 64 64 N\nMONSTER_WHISPER 255 181 235 N\nMONSTER_EMOTE 255 128 64 N\nCHANNEL 255 192 192 N\nCHANNEL_JOIN 192 128 128 N\nCHANNEL_LEAVE 192 128 128 N\nCHANNEL_LIST 192 128 128 N\nCHANNEL_NOTICE 192 192 192 N\nCHANNEL_NOTICE_USER 192 192 192 N\nAFK 255 128 255 N\nDND 255 128 255 N\nIGNORED 255 0 0 N\nSKILL 85 85 255 N\nLOOT 0 170 0 N\nMONEY 255 255 0 N\nOPENING 128 128 255 N\nTRADESKILLS 255 255 255 N\nPET_INFO 128 128 255 N\nCOMBAT_MISC_INFO 128 128 255 N\nCOMBAT_XP_GAIN 111 111 255 N\nCOMBAT_HONOR_GAIN 224 202 10 N\nCOMBAT_FACTION_CHANGE 128 128 255 N\nBG_SYSTEM_NEUTRAL 255 120 10 N\nBG_SYSTEM_ALLIANCE 0 174 239 N\nBG_SYSTEM_HORDE 255 0 0 N\nRAID_LEADER 255 72 9 N\nRAID_WARNING 255 72 0 N\nRAID_BOSS_EMOTE 255 221 0 N\nRAID_BOSS_WHISPER 255 221 0 N\nFILTERED 255 0 0 N\nRESTRICTED 255 0 0 N\nBATTLENET 255 255 255 N\nACHIEVEMENT 255 255 0 N\nGUILD_ACHIEVEMENT 64 255 64 N\nARENA_POINTS 255 255 255 N\nPARTY_LEADER 118 200 255 N\nTARGETICONS 255 255 0 N\nBN_WHISPER 0 255 246 N\nBN_WHISPER_INFORM 0 255 246 N\nBN_CONVERSATION 0 177 240 N\nBN_CONVERSATION_NOTICE 0 177 240 N\nBN_CONVERSATION_LIST 0 177 240 N\nBN_INLINE_TOAST_ALERT 130 197 255 N\nBN_INLINE_TOAST_BROADCAST 130 197 255 N\nBN_INLINE_TOAST_BROADCAST_INFORM 130 197 255 N\nBN_INLINE_TOAST_CONVERSATION 130 197 255 N\nBN_WHISPER_PLAYER_OFFLINE 255 255 0 N\nCOMBAT_GUILD_XP_GAIN 111 111 255 N\nCURRENCY 0 170 0 N\nQUEST_BOSS_EMOTE 255 128 64 N\nPET_BATTLE_COMBAT_LOG 231 222 171 N\nPET_BATTLE_INFO 225 222 93 N\nINSTANCE_CHAT 255 127 0 N\nINSTANCE_CHAT_LEADER 255 72 9 N\nCHANNEL1 255 192 192 N\nCHANNEL2 255 192 192 N\nCHANNEL3 255 192 192 N\nCHANNEL4 255 192 192 N\nCHANNEL5 255 192 192 N\nCHANNEL6 255 192 192 N\nCHANNEL7 255 192 192 N\nCHANNEL8 255 192 192 N\nCHANNEL9 255 192 192 N\nCHANNEL10 255 192 192 N\nEND\n\nWINDOW 1\nNAME Общий\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 1\nSHOWN 1\nMESSAGES\nSYSTEM\nSYSTEM_NOMENU\nSAY\nEMOTE\nYELL\nWHISPER\nPARTY\nPARTY_LEADER\nRAID\nRAID_LEADER\nRAID_WARNING\nGUILD\nOFFICER\nMONSTER_SAY\nMONSTER_YELL\nMONSTER_EMOTE\nMONSTER_WHISPER\nMONSTER_BOSS_EMOTE\nMONSTER_BOSS_WHISPER\nERRORS\nAFK\nDND\nIGNORED\nBG_HORDE\nBG_ALLIANCE\nBG_NEUTRAL\nCOMBAT_FACTION_CHANGE\nSKILL\nLOOT\nMONEY\nCHANNEL\nACHIEVEMENT\nGUILD_ACHIEVEMENT\nBN_WHISPER\nBN_WHISPER_INFORM\nBN_CONVERSATION\nBN_INLINE_TOAST_ALERT\nCURRENCY\nBN_WHISPER_PLAYER_OFFLINE\nPET_BATTLE_INFO\nINSTANCE_CHAT\nINSTANCE_CHAT_LEADER\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 35651587\n\nEND\n\nWINDOW 2\nNAME Журнал боя\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 2\nSHOWN 0\nMESSAGES\nOPENING\nTRADESKILLS\nPET_INFO\nCOMBAT_XP_GAIN\nCOMBAT_HONOR_GAIN\nCOMBAT_MISC_INFO\nCOMBAT_GUILD_XP_GAIN\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 3\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 4\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 5\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 6\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 7\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 8\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 9\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\nWINDOW 10\nSIZE 0\nCOLOR 0 0 0 40\nLOCKED 1\nUNINTERACTABLE 0\nDOCKED 0\nSHOWN 0\nMESSAGES\nEND\n\nCHANNELS\nEND\n\nZONECHANNELS 0\n\nEND\n\n');

/*Table structure for table `character_achievement` */

DROP TABLE IF EXISTS `character_achievement`;

CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_achievement` */

/*Table structure for table `character_achievement_count` */

DROP TABLE IF EXISTS `character_achievement_count`;

CREATE TABLE `character_achievement_count` (
  `guid` bigint(11) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `character_achievement_count` */

/*Table structure for table `character_achievement_criteria_progress` */

DROP TABLE IF EXISTS `character_achievement_criteria_progress`;

CREATE TABLE `character_achievement_criteria_progress` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `criteria` smallint(5) unsigned NOT NULL DEFAULT '0',
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_achievement_criteria_progress` */

insert  into `character_achievement_criteria_progress`(`guid`,`criteria`,`counter`,`date`) values (1,3,15,1504731791),(1,664,3000,1504731525),(1,760,1,1504731745),(1,943,1,1504731525),(1,1018,1,1504731745),(1,1290,1,1504731525),(1,1846,1,1504731745),(1,1849,1,1504731745),(1,2042,31,1504731781),(1,2051,1,1504731525),(1,2054,1,1504731525),(1,2057,1,1504731525),(1,2060,1,1504731525),(1,2109,3000,1504731525),(1,2123,3106,1504731745),(1,2126,3106,1504731745),(1,2127,3106,1504731745),(1,2128,406,1504731745),(1,2130,506,1504731745),(1,2255,15,1504731791),(1,2263,1,1504731525),(1,2275,1,1504731790),(1,2521,15,1504731791),(1,2684,1,1504731525),(1,2748,15,1504731791),(1,2754,15,1504731791),(1,2811,1,1504731745),(1,3481,15,1504731791),(1,3818,15,1504731791),(1,4012,200,1504731525),(1,4152,3106,1504731745),(1,4153,3106,1504731745),(1,4154,506,1504731745),(1,4155,406,1504731745),(1,4156,3106,1504731745),(1,4157,3130,1504731745),(1,4634,1,1504731745),(1,4809,1,1504731745),(1,5201,1,1504731745),(1,5853,1,1504731525),(1,5862,75,1504731745),(1,6319,1,1504731525),(1,6473,15,1504731791),(1,6556,1,1504731525),(1,6558,1,1504731525),(1,6559,1,1504731525),(1,6564,1,1504731525),(1,6568,1,1504731525),(1,6964,1,1504731745),(1,7011,3000,1504731525),(1,7088,4,1504731776),(1,7091,25,1504731788),(1,7345,1,1504731745),(1,7901,3106,1504731745),(1,8066,506,1504731745),(1,8208,152,1504731790),(1,8441,15,1504731791),(1,8473,406,1504731745),(1,8561,3106,1504731745),(1,9125,200,1504731525),(1,9655,1,1504731525),(1,10621,9,1504731745),(1,10688,500,1504731525),(1,10689,500,1504731525),(1,10692,500,1504731525),(1,10694,500,1504731525),(1,14358,3106,1504731745),(1,15072,15,1504731791),(1,15658,1,1504731525),(1,21438,3000,1504731525),(1,21719,3000,1504731525),(1,21754,3100,1504731525),(1,30888,3100,1504731525),(1,32151,3000,1504731525),(2,3,1260,1504732389),(2,760,5,1504732389),(2,943,4,1504732384),(2,1018,5,1504732389),(2,1290,4,1504732384),(2,1846,5,1504732389),(2,1849,5,1504732389),(2,2042,44,1504732353),(2,2051,4,1504732384),(2,2054,4,1504732384),(2,2057,4,1504732384),(2,2060,4,1504732384),(2,2190,1260,1504732389),(2,2263,4,1504732384),(2,2275,5,1504732292),(2,2684,4,1504732384),(2,2745,1260,1504732389),(2,2811,5,1504732389),(2,3478,1260,1504732389),(2,4012,200,1504732149),(2,4634,5,1504732389),(2,4809,5,1504732389),(2,5201,5,1504732389),(2,5853,4,1504732384),(2,5862,375,1504732389),(2,6319,1,1504732149),(2,6557,1,1504732149),(2,6558,1,1504732149),(2,6559,1,1504732149),(2,6562,1,1504732149),(2,6565,1,1504732149),(2,6568,1,1504732149),(2,6964,5,1504732389),(2,7088,6,1504732361),(2,7091,46,1504732380),(2,7345,5,1504732389),(2,8208,1236,1504732381),(2,9125,200,1504732149),(2,9655,4,1504732384),(2,10309,1260,1504732389),(2,10544,1260,1504732389),(2,10621,2,1504732165),(2,10688,500,1504732149),(2,10689,500,1504732149),(2,10692,500,1504732149),(2,10694,500,1504732149),(2,15658,4,1504732384),(2,21438,3000,1504732149);

/*Table structure for table `character_achievement_criteria_progress_v2` */

DROP TABLE IF EXISTS `character_achievement_criteria_progress_v2`;

CREATE TABLE `character_achievement_criteria_progress_v2` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `criteria` smallint(5) unsigned NOT NULL DEFAULT '0',
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_achievement_criteria_progress_v2` */

/*Table structure for table `character_achievement_progress` */

DROP TABLE IF EXISTS `character_achievement_progress`;

CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_achievement_progress` */

/*Table structure for table `character_action` */

DROP TABLE IF EXISTS `character_action`;

CREATE TABLE `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_action` */

insert  into `character_action`(`guid`,`spec`,`button`,`action`,`type`) values (1,0,0,133,0),(1,0,9,69070,0),(1,0,10,69041,0),(2,0,72,100780,0),(2,0,73,100787,0),(2,0,80,77272,128),(2,0,81,107079,0);

/*Table structure for table `character_archaeology` */

DROP TABLE IF EXISTS `character_archaeology`;

CREATE TABLE `character_archaeology` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `sites0` text,
  `sites1` text,
  `sites2` text,
  `sites3` text,
  `sites4` text,
  `counts` text,
  `projects` text,
  `completed` text,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_archaeology` */

/*Table structure for table `character_archaeology_projects` */

DROP TABLE IF EXISTS `character_archaeology_projects`;

CREATE TABLE `character_archaeology_projects` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `first_date` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_archaeology_projects` */

/*Table structure for table `character_arena_data` */

DROP TABLE IF EXISTS `character_arena_data`;

CREATE TABLE `character_arena_data` (
  `guid` int(11) NOT NULL,
  `rating0` int(10) DEFAULT '0',
  `bestRatingOfWeek0` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason0` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating0` int(10) DEFAULT '0',
  `weekGames0` int(10) DEFAULT '0',
  `weekWins0` int(10) DEFAULT '0',
  `prevWeekWins0` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames0` int(10) DEFAULT '0',
  `seasonWins0` int(10) DEFAULT '0',
  `rating1` int(10) DEFAULT '0',
  `bestRatingOfWeek1` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason1` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating1` int(10) DEFAULT '0',
  `weekGames1` int(10) DEFAULT '0',
  `weekWins1` int(10) DEFAULT '0',
  `prevWeekWins1` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames1` int(10) DEFAULT '0',
  `seasonWins1` int(10) DEFAULT '0',
  `rating2` int(10) DEFAULT '0',
  `bestRatingOfWeek2` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason2` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating2` int(10) DEFAULT '0',
  `weekGames2` int(10) DEFAULT '0',
  `weekWins2` int(10) DEFAULT '0',
  `prevWeekWins2` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames2` int(10) DEFAULT '0',
  `seasonWins2` int(10) DEFAULT '0',
  `rating3` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfWeek3` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason3` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating3` int(10) NOT NULL DEFAULT '1500',
  `weekGames3` int(10) unsigned NOT NULL DEFAULT '0',
  `weekWins3` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekWins3` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames3` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonWins3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_arena_data` */

insert  into `character_arena_data`(`guid`,`rating0`,`bestRatingOfWeek0`,`bestRatingOfSeason0`,`matchMakerRating0`,`weekGames0`,`weekWins0`,`prevWeekWins0`,`seasonGames0`,`seasonWins0`,`rating1`,`bestRatingOfWeek1`,`bestRatingOfSeason1`,`matchMakerRating1`,`weekGames1`,`weekWins1`,`prevWeekWins1`,`seasonGames1`,`seasonWins1`,`rating2`,`bestRatingOfWeek2`,`bestRatingOfSeason2`,`matchMakerRating2`,`weekGames2`,`weekWins2`,`prevWeekWins2`,`seasonGames2`,`seasonWins2`,`rating3`,`bestRatingOfWeek3`,`bestRatingOfSeason3`,`matchMakerRating3`,`weekGames3`,`weekWins3`,`prevWeekWins3`,`seasonGames3`,`seasonWins3`) values (1,0,0,0,1500,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,1500,0,0,0,0,0),(2,0,0,0,1500,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,1500,0,0,0,0,0);

/*Table structure for table `character_arena_stats` */

DROP TABLE IF EXISTS `character_arena_stats`;

CREATE TABLE `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_arena_stats` */

/*Table structure for table `character_aura` */

DROP TABLE IF EXISTS `character_aura`;

CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` int(10) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `castItemLevel` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_aura` */

insert  into `character_aura`(`guid`,`slot`,`caster_guid`,`item_guid`,`spell`,`effect_mask`,`recalculate_mask`,`stackcount`,`maxduration`,`remaintime`,`remaincharges`,`castItemLevel`) values (1,0,17379539963028177167,0,74973,1,0,1,1800000,1519457,0,-1),(2,5,108086391056891906,0,67789,1,0,1,-1,-1,0,-1),(2,1,108086391056891906,0,103985,31,0,1,-1,-1,0,-1),(2,3,108086391056891906,0,107032,1,0,1,-1,-1,0,-1),(2,0,108086391056891906,0,108561,3,0,1,-1,-1,0,-1);

/*Table structure for table `character_aura_effect` */

DROP TABLE IF EXISTS `character_aura_effect`;

CREATE TABLE `character_aura_effect` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `baseamount` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL,
  `data` tinyblob NOT NULL,
  PRIMARY KEY (`guid`,`slot`,`effect`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `character_aura_effect` */

insert  into `character_aura_effect`(`guid`,`slot`,`effect`,`baseamount`,`amount`,`data`) values (1,0,0,3,3,''),(2,0,0,108557,108557,''),(2,0,1,0,0,''),(2,1,0,0,0,''),(2,1,1,0,0,''),(2,1,2,10,10,''),(2,1,3,1,1,''),(2,1,4,10,10,''),(2,3,0,1000,1000,''),(2,5,0,0,0,'');

/*Table structure for table `character_banned` */

DROP TABLE IF EXISTS `character_banned`;

CREATE TABLE `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

/*Data for the table `character_banned` */

/*Table structure for table `character_battleground_data` */

DROP TABLE IF EXISTS `character_battleground_data`;

CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `deserterTime` int(11) DEFAULT '0',
  `deserterCount` int(11) DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_battleground_data` */

insert  into `character_battleground_data`(`guid`,`instanceId`,`team`,`joinX`,`joinY`,`joinZ`,`joinO`,`joinMapId`,`taxiStart`,`taxiEnd`,`mountSpell`,`deserterTime`,`deserterCount`) values (1,0,0,0,0,0,0,65535,0,0,0,0,0),(2,0,0,0,0,0,0,65535,0,0,0,0,0);

/*Table structure for table `character_battleground_random` */

DROP TABLE IF EXISTS `character_battleground_random`;

CREATE TABLE `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_battleground_random` */

/*Table structure for table `character_charges_cooldown` */

DROP TABLE IF EXISTS `character_charges_cooldown`;

CREATE TABLE `character_charges_cooldown` (
  `guid` int(10) unsigned NOT NULL,
  `category` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_charges_cooldown` */

/*Table structure for table `character_completed_challenges` */

DROP TABLE IF EXISTS `character_completed_challenges`;

CREATE TABLE `character_completed_challenges` (
  `guid` int(10) unsigned NOT NULL,
  `map_id` int(10) unsigned NOT NULL DEFAULT '0',
  `best_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `best_medal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `best_medal_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_completed_challenges` */

/*Table structure for table `character_currency` */

DROP TABLE IF EXISTS `character_currency`;

CREATE TABLE `character_currency` (
  `guid` int(11) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(11) unsigned NOT NULL,
  `week_count` int(11) unsigned NOT NULL,
  `season_total` int(11) DEFAULT '0',
  `flags` int(10) unsigned DEFAULT NULL,
  `weekCap` int(10) unsigned NOT NULL DEFAULT '0',
  `needResetCap` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_currency` */

/*Table structure for table `character_declinedname` */

DROP TABLE IF EXISTS `character_declinedname`;

CREATE TABLE `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_declinedname` */

/*Table structure for table `character_equipmentsets` */

DROP TABLE IF EXISTS `character_equipmentsets`;

CREATE TABLE `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `item0` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `item6` int(11) unsigned NOT NULL DEFAULT '0',
  `item7` int(11) unsigned NOT NULL DEFAULT '0',
  `item8` int(11) unsigned NOT NULL DEFAULT '0',
  `item9` int(11) unsigned NOT NULL DEFAULT '0',
  `item10` int(11) unsigned NOT NULL DEFAULT '0',
  `item11` int(11) unsigned NOT NULL DEFAULT '0',
  `item12` int(11) unsigned NOT NULL DEFAULT '0',
  `item13` int(11) unsigned NOT NULL DEFAULT '0',
  `item14` int(11) unsigned NOT NULL DEFAULT '0',
  `item15` int(11) unsigned NOT NULL DEFAULT '0',
  `item16` int(11) unsigned NOT NULL DEFAULT '0',
  `item17` int(11) unsigned NOT NULL DEFAULT '0',
  `item18` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_equipmentsets` */

/*Table structure for table `character_gifts` */

DROP TABLE IF EXISTS `character_gifts`;

CREATE TABLE `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_gifts` */

/*Table structure for table `character_glyphs` */

DROP TABLE IF EXISTS `character_glyphs`;

CREATE TABLE `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_glyphs` */

/*Table structure for table `character_homebind` */

DROP TABLE IF EXISTS `character_homebind`;

CREATE TABLE `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_homebind` */

insert  into `character_homebind`(`guid`,`mapId`,`zoneId`,`posX`,`posY`,`posZ`) values (1,648,4765,-8423.81,1361.3,104.671),(2,860,5834,1470.97,3466.06,181.64);

/*Table structure for table `character_instance` */

DROP TABLE IF EXISTS `character_instance`;

CREATE TABLE `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_instance` */

/*Table structure for table `character_inventory` */

DROP TABLE IF EXISTS `character_inventory`;

CREATE TABLE `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_inventory` */

insert  into `character_inventory`(`guid`,`bag`,`slot`,`item`) values (1,0,4,2),(1,0,6,4),(1,0,7,6),(1,0,15,10),(1,0,19,13),(1,0,23,8),(1,0,24,12),(1,0,26,14),(2,0,4,18),(2,0,5,16),(2,0,6,20),(2,0,8,26),(2,0,15,28),(2,0,23,22),(2,0,24,24),(2,0,25,29),(2,0,26,30);

/*Table structure for table `character_pet` */

DROP TABLE IF EXISTS `character_pet`;

CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  `specialization` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

/*Data for the table `character_pet` */

/*Table structure for table `character_pet_declinedname` */

DROP TABLE IF EXISTS `character_pet_declinedname`;

CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_pet_declinedname` */

/*Table structure for table `character_quest_currency` */

DROP TABLE IF EXISTS `character_quest_currency`;

CREATE TABLE `character_quest_currency` (
  `CharacterGuid` int(10) unsigned NOT NULL,
  `CurrencyId` int(10) unsigned NOT NULL,
  `CurrentCount` int(10) unsigned DEFAULT '0',
  `MaxCount` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`CharacterGuid`,`CurrencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_quest_currency` */

/*Table structure for table `character_queststatus` */

DROP TABLE IF EXISTS `character_queststatus`;

CREATE TABLE `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playercount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_queststatus` */

insert  into `character_queststatus`(`guid`,`quest`,`status`,`explored`,`timer`,`mobcount1`,`mobcount2`,`mobcount3`,`mobcount4`,`itemcount1`,`itemcount2`,`itemcount3`,`itemcount4`,`playercount`) values (1,14075,3,0,1504731764,0,0,0,0,0,0,0,0,0),(2,29409,3,0,1504732416,0,0,0,0,0,0,0,0,0);

/*Table structure for table `character_queststatus_daily` */

DROP TABLE IF EXISTS `character_queststatus_daily`;

CREATE TABLE `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_queststatus_daily` */

/*Table structure for table `character_queststatus_monthly` */

DROP TABLE IF EXISTS `character_queststatus_monthly`;

CREATE TABLE `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_queststatus_monthly` */

/*Table structure for table `character_queststatus_rewarded` */

DROP TABLE IF EXISTS `character_queststatus_rewarded`;

CREATE TABLE `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_queststatus_rewarded` */

insert  into `character_queststatus_rewarded`(`guid`,`quest`) values (1,14138),(2,29406),(2,29408),(2,29524),(2,30027),(2,30039);

/*Table structure for table `character_queststatus_seasonal` */

DROP TABLE IF EXISTS `character_queststatus_seasonal`;

CREATE TABLE `character_queststatus_seasonal` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`),
  KEY `event` (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_queststatus_seasonal` */

/*Table structure for table `character_queststatus_weekly` */

DROP TABLE IF EXISTS `character_queststatus_weekly`;

CREATE TABLE `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_queststatus_weekly` */

/*Table structure for table `character_raid` */

DROP TABLE IF EXISTS `character_raid`;

CREATE TABLE `character_raid` (
  `guid` int(11) DEFAULT '0',
  `mapId` int(11) DEFAULT '0',
  `encounterMask` int(11) DEFAULT '0',
  `data` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_raid` */

/*Table structure for table `character_rate` */

DROP TABLE IF EXISTS `character_rate`;

CREATE TABLE `character_rate` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `xpKill` float unsigned NOT NULL DEFAULT '1',
  `xpQuest` float unsigned NOT NULL DEFAULT '1',
  `repGain` float unsigned NOT NULL DEFAULT '1',
  `repLowLvLKill` float unsigned NOT NULL DEFAULT '1',
  `repLowLvLQuest` float unsigned NOT NULL DEFAULT '1',
  `SkillGainCrafting` int(10) unsigned NOT NULL DEFAULT '1',
  `SkillGainGathering` int(10) unsigned NOT NULL DEFAULT '1',
  `SkillChanceOrange` int(10) unsigned NOT NULL DEFAULT '1',
  `SkillChanceYellow` int(10) unsigned NOT NULL DEFAULT '1',
  `SkillChanceGreen` int(10) unsigned NOT NULL DEFAULT '1',
  `SkillChanceGrey` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_rate` */

/*Table structure for table `character_rates` */

DROP TABLE IF EXISTS `character_rates`;

CREATE TABLE `character_rates` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `rate` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `character_rates` */

/*Table structure for table `character_reputation` */

DROP TABLE IF EXISTS `character_reputation`;

CREATE TABLE `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_reputation` */

insert  into `character_reputation`(`guid`,`faction`,`standing`,`flags`) values (1,21,0,64),(1,46,0,4),(1,47,0,6),(1,54,0,6),(1,59,0,16),(1,67,0,25),(1,68,6,17),(1,69,0,6),(1,70,0,2),(1,72,0,6),(1,76,6,17),(1,81,6,17),(1,83,0,0),(1,86,0,0),(1,87,0,2),(1,92,0,2),(1,93,0,2),(1,169,0,12),(1,270,0,16),(1,289,0,4),(1,349,0,0),(1,369,0,64),(1,469,0,14),(1,470,0,64),(1,471,0,0),(1,509,0,2),(1,510,0,16),(1,529,0,0),(1,530,6,17),(1,549,0,0),(1,550,0,0),(1,551,0,0),(1,569,0,0),(1,570,0,0),(1,571,0,0),(1,574,0,4),(1,576,0,0),(1,577,0,64),(1,589,0,6),(1,609,0,0),(1,729,0,16),(1,730,0,6),(1,749,0,0),(1,809,0,16),(1,889,0,16),(1,890,0,6),(1,891,0,14),(1,892,0,24),(1,909,0,16),(1,910,0,0),(1,911,6,17),(1,922,0,16),(1,930,0,6),(1,932,0,80),(1,933,0,16),(1,934,0,80),(1,935,0,16),(1,936,0,28),(1,941,0,16),(1,942,0,16),(1,946,0,0),(1,947,0,16),(1,948,0,8),(1,949,0,24),(1,952,0,0),(1,953,0,4),(1,967,0,16),(1,970,0,0),(1,978,0,0),(1,980,0,24),(1,989,0,16),(1,990,0,16),(1,1005,0,20),(1,1011,0,16),(1,1012,0,16),(1,1015,0,2),(1,1031,0,16),(1,1037,0,0),(1,1038,0,16),(1,1050,0,6),(1,1052,0,152),(1,1064,0,16),(1,1067,0,16),(1,1068,0,6),(1,1073,0,16),(1,1077,0,16),(1,1082,0,0),(1,1085,0,16),(1,1090,0,16),(1,1091,0,16),(1,1094,0,6),(1,1097,0,12),(1,1098,0,16),(1,1104,0,16),(1,1105,0,16),(1,1106,0,16),(1,1117,0,12),(1,1118,0,12),(1,1119,0,0),(1,1124,0,16),(1,1126,0,0),(1,1133,30,17),(1,1134,0,6),(1,1135,0,16),(1,1136,0,4),(1,1137,0,4),(1,1138,0,0),(1,1154,0,4),(1,1155,0,4),(1,1156,0,16),(1,1158,0,16),(1,1162,0,8),(1,1163,0,0),(1,1168,75,17),(1,1169,0,28),(1,1171,0,64),(1,1172,0,16),(1,1173,0,16),(1,1174,0,4),(1,1177,0,6),(1,1178,0,16),(1,1204,0,16),(1,1216,0,0),(1,1228,0,2),(1,1242,0,2),(1,1245,0,8),(1,1269,0,16),(1,1270,0,16),(1,1271,0,16),(1,1272,0,152),(1,1273,0,16),(1,1275,0,16),(1,1276,0,16),(1,1277,0,16),(1,1278,0,16),(1,1279,0,16),(1,1280,0,16),(1,1281,0,16),(1,1282,0,16),(1,1283,0,16),(1,1302,0,152),(1,1337,0,16),(1,1341,0,16),(1,1345,0,16),(1,1351,0,0),(1,1352,0,17),(1,1353,0,6),(1,1357,0,4),(1,1358,0,16),(1,1359,0,16),(1,1374,0,16),(1,1375,0,144),(1,1376,0,2),(1,1387,0,2),(1,1388,0,144),(1,1416,0,0),(1,1419,0,0),(1,1433,0,20),(1,1435,0,16),(1,1440,0,16),(1,1492,0,16),(2,21,0,64),(2,46,0,4),(2,47,0,0),(2,54,0,0),(2,59,0,16),(2,67,0,0),(2,68,0,0),(2,69,0,0),(2,70,0,2),(2,72,0,0),(2,76,0,0),(2,81,0,0),(2,83,0,0),(2,86,0,0),(2,87,0,2),(2,92,0,2),(2,93,0,2),(2,169,0,12),(2,270,0,16),(2,289,0,4),(2,349,0,0),(2,369,0,64),(2,469,0,0),(2,470,0,64),(2,471,0,0),(2,509,0,0),(2,510,0,0),(2,529,0,0),(2,530,0,0),(2,549,0,0),(2,550,0,0),(2,551,0,0),(2,569,0,0),(2,570,0,0),(2,571,0,0),(2,574,0,4),(2,576,0,0),(2,577,0,64),(2,589,0,0),(2,609,0,0),(2,729,0,0),(2,730,0,0),(2,749,0,0),(2,809,0,16),(2,889,0,0),(2,890,0,0),(2,891,0,0),(2,892,0,0),(2,909,0,16),(2,910,0,0),(2,911,0,0),(2,922,0,0),(2,930,0,0),(2,932,0,80),(2,933,0,16),(2,934,0,80),(2,935,0,16),(2,936,0,28),(2,941,0,0),(2,942,0,16),(2,946,0,0),(2,947,0,0),(2,948,0,8),(2,949,0,24),(2,952,0,0),(2,953,0,4),(2,967,0,16),(2,970,0,0),(2,978,0,0),(2,980,0,24),(2,989,0,16),(2,990,0,16),(2,1005,0,0),(2,1011,0,0),(2,1012,0,16),(2,1015,0,0),(2,1031,0,0),(2,1037,0,0),(2,1038,0,16),(2,1050,0,0),(2,1052,0,0),(2,1064,0,0),(2,1067,0,0),(2,1068,0,0),(2,1073,0,16),(2,1077,0,16),(2,1082,0,0),(2,1085,0,0),(2,1090,0,16),(2,1091,0,0),(2,1094,0,0),(2,1097,0,12),(2,1098,0,16),(2,1104,0,16),(2,1105,0,16),(2,1106,0,16),(2,1117,0,12),(2,1118,0,12),(2,1119,0,0),(2,1124,0,0),(2,1126,0,0),(2,1133,0,0),(2,1134,0,0),(2,1135,0,16),(2,1136,0,4),(2,1137,0,0),(2,1138,0,0),(2,1154,0,4),(2,1155,0,4),(2,1156,0,16),(2,1158,0,16),(2,1162,0,8),(2,1163,0,0),(2,1168,375,1),(2,1169,0,0),(2,1171,0,0),(2,1172,0,0),(2,1173,0,0),(2,1174,0,0),(2,1177,0,0),(2,1178,0,0),(2,1204,0,16),(2,1216,3030,81),(2,1228,0,0),(2,1242,0,0),(2,1245,0,8),(2,1269,0,16),(2,1270,0,0),(2,1271,0,16),(2,1272,0,0),(2,1273,0,16),(2,1275,0,16),(2,1276,0,16),(2,1277,0,16),(2,1278,0,16),(2,1279,0,16),(2,1280,0,16),(2,1281,0,16),(2,1282,0,16),(2,1283,0,16),(2,1302,0,0),(2,1337,0,16),(2,1341,0,16),(2,1345,0,16),(2,1351,0,0),(2,1352,0,0),(2,1353,0,0),(2,1357,0,4),(2,1358,0,16),(2,1359,0,0),(2,1374,0,0),(2,1375,0,0),(2,1376,0,0),(2,1387,0,0),(2,1388,0,0),(2,1416,0,0),(2,1419,0,0),(2,1433,0,20),(2,1435,0,16),(2,1440,0,16),(2,1492,0,16);

/*Table structure for table `character_skills` */

DROP TABLE IF EXISTS `character_skills`;

CREATE TABLE `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_skills` */

insert  into `character_skills`(`guid`,`skill`,`value`,`max`) values (1,43,1,5),(1,95,1,5),(1,109,300,300),(1,136,1,5),(1,162,1,5),(1,173,1,5),(1,188,1,1),(1,189,1,1),(1,204,1,1),(1,205,1,1),(1,206,1,1),(1,207,1,1),(1,228,1,5),(1,270,1,1),(1,415,1,1),(1,761,1,1),(1,782,1,1),(1,790,1,1),(1,792,300,300),(1,805,1,1),(1,904,1,1),(1,927,1,1),(1,962,1,1),(1,963,1,1),(2,43,1,5),(2,44,1,5),(2,54,1,5),(2,95,1,5),(2,118,1,5),(2,136,1,5),(2,162,1,5),(2,188,1,1),(2,189,1,1),(2,204,1,1),(2,205,1,1),(2,206,1,1),(2,207,1,1),(2,229,1,5),(2,270,1,1),(2,414,1,1),(2,415,1,1),(2,473,1,5),(2,761,1,1),(2,782,1,1),(2,805,1,1),(2,829,1,1),(2,905,300,300),(2,927,1,1),(2,962,1,1),(2,963,1,1);

/*Table structure for table `character_social` */

DROP TABLE IF EXISTS `character_social`;

CREATE TABLE `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_social` */

/*Table structure for table `character_spell` */

DROP TABLE IF EXISTS `character_spell`;

CREATE TABLE `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `character_spell` */

insert  into `character_spell`(`guid`,`spell`,`active`,`disabled`) values (1,44614,1,0),(1,110499,1,0),(1,111621,1,0),(1,113873,1,0),(1,114585,1,0),(1,115043,1,0),(1,119467,1,0),(1,121039,1,0),(1,122026,1,0),(1,125439,1,0),(1,134732,1,0),(2,674,1,0),(2,100787,1,0),(2,111621,1,0),(2,113873,1,0),(2,119467,1,0),(2,122026,1,0),(2,125439,1,0),(2,134732,1,0);

/*Table structure for table `character_spell_cooldown` */

DROP TABLE IF EXISTS `character_spell_cooldown`;

CREATE TABLE `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_spell_cooldown` */

/*Table structure for table `character_stats` */

DROP TABLE IF EXISTS `character_stats`;

CREATE TABLE `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_stats` */

/*Table structure for table `character_talent` */

DROP TABLE IF EXISTS `character_talent`;

CREATE TABLE `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_talent` */

/*Table structure for table `character_void_storage` */

DROP TABLE IF EXISTS `character_void_storage`;

CREATE TABLE `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` int(10) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `character_void_storage` */

/*Table structure for table `characters` */

DROP TABLE IF EXISTS `characters`;

CREATE TABLE `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `resetspecialization_cost` int(10) NOT NULL DEFAULT '0',
  `resetspecialization_time` int(10) NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned DEFAULT NULL,
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `specialization1` int(11) NOT NULL,
  `specialization2` int(11) NOT NULL,
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `currentpetslot` tinyint(3) unsigned DEFAULT NULL,
  `petslotused` tinyint(3) unsigned DEFAULT NULL,
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `bonusFactionId` int(10) unsigned NOT NULL,
  `bonusFactionLastTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`),
  KEY `instance_id` (`instance_id`),
  KEY `idx_deleted` (`deleteInfos_Account`),
  KEY `logout` (`logout_time`),
  KEY `idx_totalKills` (`totalKills`),
  KEY `idx_totaltime` (`totaltime`),
  KEY `idx_money` (`money`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `characters` */

insert  into `characters`(`guid`,`account`,`name`,`slot`,`race`,`class`,`gender`,`level`,`xp`,`money`,`playerBytes`,`playerBytes2`,`playerFlags`,`position_x`,`position_y`,`position_z`,`map`,`instance_id`,`instance_mode_mask`,`orientation`,`taximask`,`online`,`cinematic`,`totaltime`,`leveltime`,`logout_time`,`is_logout_resting`,`rest_bonus`,`resettalents_cost`,`resettalents_time`,`resetspecialization_cost`,`resetspecialization_time`,`talentTree`,`trans_x`,`trans_y`,`trans_z`,`trans_o`,`transguid`,`extra_flags`,`stable_slots`,`at_login`,`zone`,`death_expire_time`,`taxi_path`,`totalKills`,`todayKills`,`yesterdayKills`,`chosenTitle`,`watchedFaction`,`drunk`,`health`,`power1`,`power2`,`power3`,`power4`,`power5`,`latency`,`speccount`,`activespec`,`specialization1`,`specialization2`,`exploredZones`,`equipmentCache`,`knownTitles`,`actionBars`,`currentpetslot`,`petslotused`,`grantableLevels`,`guildId`,`deleteInfos_Account`,`deleteInfos_Name`,`deleteDate`,`bonusFactionId`,`bonusFactionLastTime`) values (1,2,'Аввы',0,9,8,0,1,330,15,168100610,33554434,16777216,-8439.98,1252.43,62.056,648,0,49,3.62695,'0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,1,294,294,1504731819,0,0.00947222,0,0,0,0,'0 0 ',0,0,0,0,0,4,0,0,4737,0,'',0,0,0,0,4294967295,0,145,43,0,0,0,0,0,1,0,0,0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10240 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','0 0 0 0 0 0 0 0 49505 0 0 0 49506 0 49508 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 0 0 0 0 0 0 0 828 0 0 0 0 0 0 0 ','0 0 0 0 0 0 0 0 0 0 ',0,255,0,0,0,NULL,NULL,NULL,0,0),(2,2,'Фергус',0,24,10,0,4,1200,1260,16974593,33554434,16777216,1440.06,3376.4,173.296,860,0,49,4.4417,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,1,266,31,1504732416,0,0.0249722,0,0,0,0,'0 0 ',0,0,0,0,0,4,0,0,5736,0,'',0,0,0,0,4294967295,0,239,95,100,0,0,0,0,1,0,0,0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','0 0 0 0 0 0 0 0 72019 0 77509 0 72020 0 0 0 77526 0 0 0 0 0 0 0 0 0 0 0 0 0 73209 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ','0 0 0 0 0 0 0 0 0 0 ',0,255,0,0,0,NULL,NULL,NULL,0,0);

/*Table structure for table `characters_boss_looted` */

DROP TABLE IF EXISTS `characters_boss_looted`;

CREATE TABLE `characters_boss_looted` (
  `guid` int(10) unsigned NOT NULL,
  `boss_entry` int(10) unsigned NOT NULL,
  `boss_model_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`boss_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `characters_boss_looted` */

/*Table structure for table `corpse` */

DROP TABLE IF EXISTS `corpse`;

CREATE TABLE `corpse` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

/*Data for the table `corpse` */

/*Table structure for table `creature_raid_respawn` */

DROP TABLE IF EXISTS `creature_raid_respawn`;

CREATE TABLE `creature_raid_respawn` (
  `creatureGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `playerGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`creatureGuid`,`playerGuid`),
  KEY `idx_instance` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

/*Data for the table `creature_raid_respawn` */

/*Table structure for table `creature_respawn` */

DROP TABLE IF EXISTS `creature_respawn`;

CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

/*Data for the table `creature_respawn` */

insert  into `creature_respawn`(`guid`,`respawnTime`,`mapId`,`instanceId`) values (230664,1504732150,648,0),(997460,1504732581,860,0),(997464,1504732597,860,0),(997470,1504732633,860,0),(997472,1504732652,860,0),(997490,1504732570,860,0);

/*Table structure for table `cuf_profile` */

DROP TABLE IF EXISTS `cuf_profile`;

CREATE TABLE `cuf_profile` (
  `guid` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `data` tinyblob,
  PRIMARY KEY (`guid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cuf_profile` */

insert  into `cuf_profile`(`guid`,`name`,`data`) values (1,'Основной','!��DH\0$\0\0\0\0\0\0\0\0\0\0�'),(2,'Основной','!��\0H\0$');

/*Table structure for table `daily_players_reports` */

DROP TABLE IF EXISTS `daily_players_reports`;

CREATE TABLE `daily_players_reports` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `daily_players_reports` */

/*Table structure for table `game_event_condition_save` */

DROP TABLE IF EXISTS `game_event_condition_save`;

CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `game_event_condition_save` */

/*Table structure for table `game_event_save` */

DROP TABLE IF EXISTS `game_event_save`;

CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `game_event_save` */

insert  into `game_event_save`(`eventEntry`,`state`,`next_start`) values (33,2,0),(37,2,0),(41,2,0),(45,2,0);

/*Table structure for table `gameobject_raid_respawn` */

DROP TABLE IF EXISTS `gameobject_raid_respawn`;

CREATE TABLE `gameobject_raid_respawn` (
  `gameobjectGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `playerGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`gameobjectGuid`,`playerGuid`),
  KEY `idx_instance` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

/*Data for the table `gameobject_raid_respawn` */

/*Table structure for table `gameobject_respawn` */

DROP TABLE IF EXISTS `gameobject_respawn`;

CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

/*Data for the table `gameobject_respawn` */

/*Table structure for table `gm_subsurveys` */

DROP TABLE IF EXISTS `gm_subsurveys`;

CREATE TABLE `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `gm_subsurveys` */

/*Table structure for table `gm_surveys` */

DROP TABLE IF EXISTS `gm_surveys`;

CREATE TABLE `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `gm_surveys` */

/*Table structure for table `gm_tickets` */

DROP TABLE IF EXISTS `gm_tickets`;

CREATE TABLE `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `response` text,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `gm_tickets` */

/*Table structure for table `group_completed_challenges` */

DROP TABLE IF EXISTS `group_completed_challenges`;

CREATE TABLE `group_completed_challenges` (
  `map_id` int(10) unsigned NOT NULL,
  `attempt_id` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_time` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_date` int(10) unsigned NOT NULL DEFAULT '0',
  `medal_earned` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `group_1_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_1_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `group_2_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_2_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `group_3_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_3_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `group_4_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_4_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `group_5_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_5_spec` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_completed_challenges` */

/*Table structure for table `group_instance` */

DROP TABLE IF EXISTS `group_instance`;

CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_instance` */

/*Table structure for table `group_member` */

DROP TABLE IF EXISTS `group_member`;

CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

/*Data for the table `group_member` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

/*Data for the table `groups` */

/*Table structure for table `guild` */

DROP TABLE IF EXISTS `guild`;

CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `experience` bigint(20) unsigned DEFAULT '0',
  `todayExperience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

/*Data for the table `guild` */

/*Table structure for table `guild_achievement` */

DROP TABLE IF EXISTS `guild_achievement`;

CREATE TABLE `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_achievement` */

/*Table structure for table `guild_achievement_criteria_progress` */

DROP TABLE IF EXISTS `guild_achievement_criteria_progress`;

CREATE TABLE `guild_achievement_criteria_progress` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `criteria` smallint(5) unsigned NOT NULL DEFAULT '0',
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_achievement_criteria_progress` */

/*Table structure for table `guild_achievement_criteria_progress_v2` */

DROP TABLE IF EXISTS `guild_achievement_criteria_progress_v2`;

CREATE TABLE `guild_achievement_criteria_progress_v2` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `criteria` smallint(5) unsigned NOT NULL DEFAULT '0',
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_achievement_criteria_progress_v2` */

/*Table structure for table `guild_achievement_progress` */

DROP TABLE IF EXISTS `guild_achievement_progress`;

CREATE TABLE `guild_achievement_progress` (
  `guildId` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_achievement_progress` */

/*Table structure for table `guild_bank_eventlog` */

DROP TABLE IF EXISTS `guild_bank_eventlog`;

CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_bank_eventlog` */

/*Table structure for table `guild_bank_item` */

DROP TABLE IF EXISTS `guild_bank_item`;

CREATE TABLE `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_bank_item` */

/*Table structure for table `guild_bank_right` */

DROP TABLE IF EXISTS `guild_bank_right`;

CREATE TABLE `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_bank_right` */

/*Table structure for table `guild_bank_tab` */

DROP TABLE IF EXISTS `guild_bank_tab`;

CREATE TABLE `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_bank_tab` */

/*Table structure for table `guild_challenges` */

DROP TABLE IF EXISTS `guild_challenges`;

CREATE TABLE `guild_challenges` (
  `GuildId` int(10) unsigned NOT NULL,
  `ChallengeType` int(1) NOT NULL DEFAULT '0',
  `ChallengeCount` int(1) DEFAULT NULL,
  PRIMARY KEY (`GuildId`,`ChallengeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_challenges` */

/*Table structure for table `guild_completed_challenges` */

DROP TABLE IF EXISTS `guild_completed_challenges`;

CREATE TABLE `guild_completed_challenges` (
  `map_id` int(10) unsigned NOT NULL,
  `guild_id` int(10) unsigned NOT NULL,
  `attempt_id` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_time` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_date` int(10) unsigned NOT NULL DEFAULT '0',
  `medal_earned` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guild_members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guild_1_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_1_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_2_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_2_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_3_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_3_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_4_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_4_spec` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_5_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_5_spec` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_completed_challenges` */

/*Table structure for table `guild_eventlog` */

DROP TABLE IF EXISTS `guild_eventlog`;

CREATE TABLE `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

/*Data for the table `guild_eventlog` */

/*Table structure for table `guild_finder_applicant` */

DROP TABLE IF EXISTS `guild_finder_applicant`;

CREATE TABLE `guild_finder_applicant` (
  `guildId` int(10) unsigned DEFAULT NULL,
  `playerGuid` int(10) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `guildId` (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guild_finder_applicant` */

/*Table structure for table `guild_finder_guild_settings` */

DROP TABLE IF EXISTS `guild_finder_guild_settings`;

CREATE TABLE `guild_finder_guild_settings` (
  `guildId` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guild_finder_guild_settings` */

/*Table structure for table `guild_member` */

DROP TABLE IF EXISTS `guild_member`;

CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `BankResetTimeMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab0` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab0` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab1` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab1` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab2` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab2` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab3` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab3` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab4` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab4` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab5` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab5` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab6` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab6` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab7` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab7` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

/*Data for the table `guild_member` */

/*Table structure for table `guild_news_log` */

DROP TABLE IF EXISTS `guild_news_log`;

CREATE TABLE `guild_news_log` (
  `guild` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `eventType` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guild_news_log` */

/*Table structure for table `guild_rank` */

DROP TABLE IF EXISTS `guild_rank`;

CREATE TABLE `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

/*Data for the table `guild_rank` */

/*Table structure for table `instance` */

DROP TABLE IF EXISTS `instance`;

CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `instance` */

/*Table structure for table `instance_reset` */

DROP TABLE IF EXISTS `instance_reset`;

CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `instance_reset` */

insert  into `instance_reset`(`mapid`,`difficulty`,`resettime`) values (33,2,1504756800),(36,2,1504756800),(249,3,1505275200),(249,4,1505275200),(269,2,1504756800),(409,9,1505275200),(469,9,1505275200),(509,3,1504929600),(531,9,1505275200),(532,3,1505275200),(533,3,1505275200),(533,4,1505275200),(534,4,1505275200),(540,2,1504756800),(542,2,1504756800),(543,2,1504756800),(544,4,1505275200),(545,2,1504756800),(546,2,1504756800),(547,2,1504756800),(548,4,1505275200),(550,4,1505275200),(552,2,1504756800),(553,2,1504756800),(554,2,1504756800),(555,2,1504756800),(556,2,1504756800),(557,2,1504756800),(558,2,1504756800),(560,2,1504756800),(564,4,1505275200),(565,4,1505275200),(568,2,1504756800),(574,2,1504756800),(575,2,1504756800),(576,2,1504756800),(578,2,1504756800),(580,4,1505275200),(585,2,1504756800),(595,2,1504756800),(598,2,1504756800),(599,2,1504756800),(600,2,1504756800),(601,2,1504756800),(602,2,1504756800),(603,3,1505275200),(603,4,1505275200),(604,2,1504756800),(608,2,1504756800),(615,3,1505275200),(615,4,1505275200),(616,3,1505275200),(616,4,1505275200),(619,2,1504756800),(624,3,1505275200),(624,4,1505275200),(631,3,1505275200),(631,4,1505275200),(631,5,1505275200),(631,6,1505275200),(632,2,1504756800),(643,2,1504756800),(644,2,1504756800),(645,2,1504756800),(649,3,1505275200),(649,4,1505275200),(649,5,1505275200),(649,6,1505275200),(650,2,1504756800),(657,2,1504756800),(658,2,1504756800),(668,2,1504756800),(669,3,1505275200),(669,4,1505275200),(669,5,1505275200),(669,6,1505275200),(670,2,1504756800),(671,3,1505275200),(671,4,1505275200),(671,5,1505275200),(671,6,1505275200),(720,3,1505275200),(720,4,1505275200),(720,5,1505275200),(720,6,1505275200),(724,3,1505275200),(724,4,1505275200),(724,5,1505275200),(724,6,1505275200),(725,2,1504756800),(754,3,1505275200),(754,4,1505275200),(754,5,1505275200),(754,6,1505275200),(755,2,1504756800),(757,3,1505275200),(757,4,1505275200),(757,5,1505275200),(757,6,1505275200),(859,2,1504756800),(938,2,1504756800),(939,2,1504756800),(940,2,1504756800),(959,2,1504756800),(960,2,1504756800),(961,2,1504756800),(962,2,1504756800),(967,3,1505275200),(967,4,1505275200),(967,5,1505275200),(967,6,1505275200),(994,2,1504756800),(996,3,1505275200),(996,4,1505275200),(996,5,1505275200),(996,6,1505275200),(1001,2,1504756800),(1004,2,1504756800),(1007,2,1504756800),(1008,3,1505275200),(1008,4,1505275200),(1008,5,1505275200),(1008,6,1505275200),(1009,3,1505275200),(1009,4,1505275200),(1009,5,1505275200),(1009,6,1505275200),(1011,2,1504756800),(1098,3,1505275200),(1098,4,1505275200),(1098,5,1505275200),(1098,6,1505275200),(1136,3,1505275200),(1136,4,1505275200),(1136,5,1505275200),(1136,6,1505275200);

/*Table structure for table `item_instance` */

DROP TABLE IF EXISTS `item_instance`;

CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `transEntry` mediumint(8) NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `reforgeId` mediumint(8) DEFAULT NULL,
  `transmogrifyId` mediumint(8) DEFAULT NULL,
  `upgradeId` mediumint(8) DEFAULT NULL,
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

/*Data for the table `item_instance` */

insert  into `item_instance`(`guid`,`itemEntry`,`transEntry`,`owner_guid`,`creatorGuid`,`giftCreatorGuid`,`count`,`duration`,`charges`,`flags`,`enchantments`,`randomPropertyId`,`reforgeId`,`transmogrifyId`,`upgradeId`,`durability`,`playedTime`,`text`) values (2,49505,0,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,55,0,''),(4,49506,0,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,40,0,''),(6,49508,0,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,25,0,''),(8,6948,0,1,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,0,0,''),(10,35,0,1,0,0,1,0,'0 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,40,0,''),(12,117,0,1,0,0,1,0,'-1 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,0,0,''),(13,828,0,1,0,0,1,0,'0 0 0 0 0 ',196608,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,0,0,''),(14,159,0,1,0,0,1,0,'-1 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,0,0,''),(16,77509,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,20,0,''),(18,72019,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,55,0,''),(20,72020,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,40,0,''),(22,77272,0,2,0,0,4,0,'-1 0 0 0 0 ',0,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,0,0,''),(24,6948,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,0,0,''),(26,77526,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,20,0,''),(28,73209,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,40,0,''),(29,73215,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,20,0,''),(30,73218,0,2,0,0,1,0,'0 0 0 0 0 ',1,'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',0,0,0,0,20,0,'');

/*Table structure for table `item_refund_instance` */

DROP TABLE IF EXISTS `item_refund_instance`;

CREATE TABLE `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

/*Data for the table `item_refund_instance` */

/*Table structure for table `item_soulbound_trade_data` */

DROP TABLE IF EXISTS `item_soulbound_trade_data`;

CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

/*Data for the table `item_soulbound_trade_data` */

/*Table structure for table `lag_reports` */

DROP TABLE IF EXISTS `lag_reports`;

CREATE TABLE `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `latency` int(10) unsigned NOT NULL DEFAULT '0',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

/*Data for the table `lag_reports` */

/*Table structure for table `lfb_data` */

DROP TABLE IF EXISTS `lfb_data`;

CREATE TABLE `lfb_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lfb_data` */

/*Table structure for table `lfg_data` */

DROP TABLE IF EXISTS `lfg_data`;

CREATE TABLE `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

/*Data for the table `lfg_data` */

/*Table structure for table `log_arena` */

DROP TABLE IF EXISTS `log_arena`;

CREATE TABLE `log_arena` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) DEFAULT NULL,
  `string` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `log_arena` */

/*Table structure for table `log_faction_change` */

DROP TABLE IF EXISTS `log_faction_change`;

CREATE TABLE `log_faction_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` int(16) NOT NULL,
  `account` int(11) NOT NULL,
  `OldRace` int(11) NOT NULL,
  `NewRace` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3711 DEFAULT CHARSET=latin1;

/*Data for the table `log_faction_change` */

/*Table structure for table `log_gm` */

DROP TABLE IF EXISTS `log_gm`;

CREATE TABLE `log_gm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `gm_account_id` bigint(20) NOT NULL,
  `gm_account_name` blob NOT NULL,
  `gm_character_id` bigint(20) NOT NULL,
  `gm_character_name` blob NOT NULL,
  `gm_last_ip` tinytext,
  `sc_account_id` bigint(20) NOT NULL,
  `sc_account_name` blob NOT NULL,
  `sc_character_id` bigint(20) NOT NULL,
  `sc_character_name` blob NOT NULL,
  `command` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_gm` */

/*Table structure for table `log_gm_chat` */

DROP TABLE IF EXISTS `log_gm_chat`;

CREATE TABLE `log_gm_chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `from_account_id` bigint(20) NOT NULL,
  `from_account_name` blob NOT NULL,
  `from_character_id` bigint(20) NOT NULL,
  `from_character_name` blob NOT NULL,
  `to_account_id` bigint(20) NOT NULL,
  `to_account_name` blob NOT NULL,
  `to_character_id` bigint(20) NOT NULL,
  `to_character_name` blob NOT NULL,
  `message` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_gm_chat` */

/*Table structure for table `log_mail` */

DROP TABLE IF EXISTS `log_mail`;

CREATE TABLE `log_mail` (
  `id` int(11) DEFAULT NULL,
  `messageType` tinyint(3) DEFAULT NULL,
  `stationery` tinyint(3) DEFAULT NULL,
  `mailTemplateId` mediumint(8) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `subject` blob,
  `body` blob,
  `has_items` tinyint(3) DEFAULT NULL,
  `expire_time` bigint(40) DEFAULT NULL,
  `deliver_time` bigint(40) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `cod` int(11) DEFAULT NULL,
  `checked` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_mail` */

/*Table structure for table `log_rename` */

DROP TABLE IF EXISTS `log_rename`;

CREATE TABLE `log_rename` (
  `guid` int(11) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `oldName` tinytext NOT NULL,
  `newName` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_rename` */

/*Table structure for table `log_store_gold` */

DROP TABLE IF EXISTS `log_store_gold`;

CREATE TABLE `log_store_gold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction` int(11) NOT NULL DEFAULT '0',
  `guid` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_store_gold` */

/*Table structure for table `log_store_item` */

DROP TABLE IF EXISTS `log_store_item`;

CREATE TABLE `log_store_item` (
  `id` int(11) NOT NULL DEFAULT '0',
  `transaction` int(11) DEFAULT '0',
  `guid` int(11) DEFAULT '0',
  `itemid` int(11) DEFAULT '0',
  `count` int(5) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_store_item` */

/*Table structure for table `log_trade` */

DROP TABLE IF EXISTS `log_trade`;

CREATE TABLE `log_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `sc_accountid` int(11) DEFAULT NULL,
  `sc_guid` int(11) DEFAULT NULL,
  `sc_name` text,
  `tar_accountid` int(11) DEFAULT NULL,
  `tar_guid` int(11) DEFAULT NULL,
  `tar_name` text,
  `item_name` tinytext,
  `item_entry` int(11) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log_trade` */

/*Table structure for table `mail` */

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`),
  KEY `exptime` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

/*Data for the table `mail` */

/*Table structure for table `mail_items` */

DROP TABLE IF EXISTS `mail_items`;

CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`),
  KEY `findByItem` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `mail_items` */

/*Table structure for table `pet_aura` */

DROP TABLE IF EXISTS `pet_aura`;

CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

/*Data for the table `pet_aura` */

/*Table structure for table `pet_aura_effect` */

DROP TABLE IF EXISTS `pet_aura_effect`;

CREATE TABLE `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseamount` int(11) NOT NULL DEFAULT '0',
  `data` tinyblob NOT NULL,
  PRIMARY KEY (`guid`,`slot`,`effect`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pet_aura_effect` */

/*Table structure for table `pet_spell` */

DROP TABLE IF EXISTS `pet_spell`;

CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

/*Data for the table `pet_spell` */

/*Table structure for table `pet_spell_cooldown` */

DROP TABLE IF EXISTS `pet_spell_cooldown`;

CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet_spell_cooldown` */

/*Table structure for table `petition` */

DROP TABLE IF EXISTS `petition`;

CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

/*Data for the table `petition` */

/*Table structure for table `petition_sign` */

DROP TABLE IF EXISTS `petition_sign`;

CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

/*Data for the table `petition_sign` */

/*Table structure for table `players_reports_status` */

DROP TABLE IF EXISTS `players_reports_status`;

CREATE TABLE `players_reports_status` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `players_reports_status` */

/*Table structure for table `pool_quest_save` */

DROP TABLE IF EXISTS `pool_quest_save`;

CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pool_quest_save` */

insert  into `pool_quest_save`(`pool_id`,`quest_id`) values (349,14102),(350,13905),(351,13914),(352,11377),(353,11666),(354,13423),(356,11370),(357,11385),(358,25161),(359,25156),(360,29358),(361,26227),(362,29332),(363,26153),(364,29355),(365,29314),(366,26572),(367,29346),(368,29361),(369,26536),(370,29344),(371,29324),(372,28063),(372,28137),(373,27949),(373,28046),(374,27975),(374,28275),(375,27948),(375,27970),(376,28682),(376,28686),(377,28678),(377,28680),(378,28695),(378,28696),(379,28690),(379,28692),(5662,13675),(5663,13762),(5664,13769),(5665,13773),(5666,13780),(5667,13785),(5668,13670),(5669,13603),(5670,13741),(5671,13748),(5672,13758),(5673,13754),(5674,13101),(5675,13112),(5676,13836),(5677,12958),(5678,24583);

/*Table structure for table `reserved_name` */

DROP TABLE IF EXISTS `reserved_name`;

CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

/*Data for the table `reserved_name` */

/*Table structure for table `store_gold` */

DROP TABLE IF EXISTS `store_gold`;

CREATE TABLE `store_gold` (
  `guid` int(11) unsigned NOT NULL,
  `gold` int(11) unsigned DEFAULT NULL,
  `transaction` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`),
  UNIQUE KEY `transaction` (`transaction`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `store_gold` */

/*Table structure for table `store_item` */

DROP TABLE IF EXISTS `store_item`;

CREATE TABLE `store_item` (
  `itemid` int(11) NOT NULL DEFAULT '0',
  `guid` int(11) unsigned NOT NULL,
  `count` int(11) unsigned NOT NULL,
  `transaction` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`),
  UNIQUE KEY `transaction` (`transaction`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `store_item` */

/*Table structure for table `store_level` */

DROP TABLE IF EXISTS `store_level`;

CREATE TABLE `store_level` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '80',
  `transaction` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`),
  UNIQUE KEY `transaction` (`transaction`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `store_level` */

/*Table structure for table `store_metier` */

DROP TABLE IF EXISTS `store_metier`;

CREATE TABLE `store_metier` (
  `guid` int(11) unsigned NOT NULL,
  `skill` int(11) unsigned NOT NULL,
  `value` int(11) unsigned NOT NULL,
  `transaction` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`),
  UNIQUE KEY `NewIndex1` (`skill`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `store_metier` */

/*Table structure for table `time_diff_log` */

DROP TABLE IF EXISTS `time_diff_log`;

CREATE TABLE `time_diff_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned DEFAULT '0',
  `average` int(10) unsigned DEFAULT '0',
  `max` int(10) unsigned DEFAULT '0',
  `players` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=519838 DEFAULT CHARSET=utf8;

/*Data for the table `time_diff_log` */

insert  into `time_diff_log`(`id`,`time`,`average`,`max`,`players`) values (519816,1504731136,0,0,0),(519817,1504731196,10,262,0),(519818,1504731256,10,98,0),(519819,1504731316,10,12,0),(519820,1504731376,10,13,0),(519821,1504731436,10,12,0),(519822,1504731496,10,12,0),(519823,1504731556,10,1643,1),(519824,1504731616,10,56,1),(519825,1504731676,10,12,1),(519826,1504731736,9,13,1),(519827,1504731796,10,94,1),(519828,1504731856,10,183,1),(519829,1504731916,10,12,1),(519830,1504731976,10,12,1),(519831,1504732036,9,12,1),(519832,1504732096,10,12,1),(519833,1504732156,10,245,1),(519834,1504732216,10,37,1),(519835,1504732276,10,12,1),(519836,1504732336,10,47,1),(519837,1504732396,10,13,1);

/*Table structure for table `warden_action` */

DROP TABLE IF EXISTS `warden_action`;

CREATE TABLE `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `warden_action` */

/*Table structure for table `worldstates` */

DROP TABLE IF EXISTS `worldstates`;

CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

/*Data for the table `worldstates` */

insert  into `worldstates`(`entry`,`value`,`comment`) values (3781,9000000,NULL),(3801,0,NULL),(3802,0,NULL),(20002,1505335934,NULL),(20003,1504753200,NULL),(20004,1506805200,NULL),(20006,1505335934,NULL),(20007,17422,NULL),(20008,17422,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
