 -- Some npc's that shouldn't have a questgiver flag
UPDATE `creature_template` SET `npcflag` = `npcflag`-2 WHERE `npcflag` = `npcflag`|2 AND `entry` IN (38038,39062,38300,38560,39157);
 -- Remove any quests from creatures that shouldn't give quests.
DELETE FROM `creature_questrelation` WHERE `id` IN (38038,39062,38300,38560,39157);

 -- Fix the first quest chains + adding a class requierements for the quests. Now the starting area will not be such a mess.
SET @WARRIOR := 1;
SET @HUNTER := 4;
SET @ROGUE := 8;
SET @PRIEST := 16;
SET @SHAMAN := 64;
SET @MAGE := 128;
SET @WARLOCK := 256;
SET @DRUID := 1024;
 -- Druid
UPDATE `quest_template` SET `RequiredClasses`=@DRUID WHERE `id`=24764; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@DRUID, `PrevQuestId`=24764 WHERE `id`=24765; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@DRUID, `PrevQuestId`=24765 WHERE `id`=24767; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@DRUID, `PrevQuestId`=24767 WHERE `id`=24768; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@DRUID, `PrevQuestId`=24768 WHERE `id`=24766; -- The Arts of a Druid
UPDATE `quest_template` SET `RequiredClasses`=@DRUID, `PrevQuestId`=24766 WHERE `id`=24769; -- More Than Expected
 -- Warrior
UPDATE `quest_template` SET `RequiredClasses`=@WARRIOR WHERE `id`=24607; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@WARRIOR, `PrevQuestId`=24607 WHERE `id`=24639; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@WARRIOR, `PrevQuestId`=24639 WHERE `id`=24641; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@WARRIOR, `PrevQuestId`=24641 WHERE `id`=24642; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@WARRIOR, `PrevQuestId`=24642 WHERE `id`=24640; -- The Arts of a Warrior
UPDATE `quest_template` SET `RequiredClasses`=@WARRIOR, `PrevQuestId`=24640 WHERE `id`=24643; -- More Than Expected
 -- Hunter
UPDATE `quest_template` SET `RequiredClasses`=@HUNTER WHERE `id`=24776; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@HUNTER, `PrevQuestId`=24776 WHERE `id`=24777; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@HUNTER, `PrevQuestId`=24777 WHERE `id`=24779; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@HUNTER, `PrevQuestId`=24779 WHERE `id`=24780; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@HUNTER, `PrevQuestId`=24780 WHERE `id`=24778; -- The Arts of a Hunter
UPDATE `quest_template` SET `RequiredClasses`=@HUNTER, `PrevQuestId`=24778 WHERE `id`=24781; -- More Than Expected
 -- Shaman
UPDATE `quest_template` SET `RequiredClasses`=@SHAMAN WHERE `id`=24758; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@SHAMAN, `PrevQuestId`=24758 WHERE `id`=24759; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@SHAMAN, `PrevQuestId`=24759 WHERE `id`=24761; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@SHAMAN, `PrevQuestId`=24761 WHERE `id`=24762; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@SHAMAN, `PrevQuestId`=24762 WHERE `id`=24760; -- The Arts of a Shaman
UPDATE `quest_template` SET `RequiredClasses`=@SHAMAN, `PrevQuestId`=24760 WHERE `id`=24763; -- More Than Expected
 -- Rogue
UPDATE `quest_template` SET `RequiredClasses`=@ROGUE WHERE `id`=24770; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@ROGUE, `PrevQuestId`=24770 WHERE `id`=24771; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@ROGUE, `PrevQuestId`=24771 WHERE `id`=24773; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@ROGUE, `PrevQuestId`=24773 WHERE `id`=24774; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@ROGUE, `PrevQuestId`=24774 WHERE `id`=24772; -- The Arts of a Rogue
UPDATE `quest_template` SET `RequiredClasses`=@ROGUE, `PrevQuestId`=24772 WHERE `id`=24775; -- More Than Expected
 -- Priest
UPDATE `quest_template` SET `RequiredClasses`=@PRIEST WHERE `id`=24782; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@PRIEST, `PrevQuestId`=24782 WHERE `id`=24783; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@PRIEST, `PrevQuestId`=24783 WHERE `id`=24785; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@PRIEST, `PrevQuestId`=24785 WHERE `id`=24786; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@PRIEST, `PrevQuestId`=24786 WHERE `id`=24784; -- Learnin' tha Word
UPDATE `quest_template` SET `RequiredClasses`=@PRIEST, `PrevQuestId`=24784 WHERE `id`=24787; -- More Than Expected
 -- Warlock
UPDATE `quest_template` SET `RequiredClasses`=@WARLOCK WHERE `id`=26272; -- The Rise of the Darkspear
UPDATE `quest_template` SET `RequiredClasses`=@WARLOCK, `PrevQuestId`=26272 WHERE `id`=26273; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@WARLOCK, `PrevQuestId`=26273 WHERE `id`=26275; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@WARLOCK, `PrevQuestId`=26275 WHERE `id`=26276; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@WARLOCK, `PrevQuestId`=26276 WHERE `id`=26274; -- Learnin' tha Word
UPDATE `quest_template` SET `RequiredClasses`=@WARLOCK, `PrevQuestId`=26274 WHERE `id`=26277; -- The Arts of a Warlock
 -- Mage
UPDATE `quest_template` SET `RequiredClasses`=@MAGE WHERE `id`=24750;
UPDATE `quest_template` SET `RequiredClasses`=@MAGE, `PrevQuestId`=24750 WHERE `id`=24751; -- The Basics: Hitting Things
UPDATE `quest_template` SET `RequiredClasses`=@MAGE, `PrevQuestId`=24751 WHERE `id`=24753; -- A Rough Start
UPDATE `quest_template` SET `RequiredClasses`=@MAGE, `PrevQuestId`=24753 WHERE `id`=24754; -- Proving Pit
UPDATE `quest_template` SET `RequiredClasses`=@MAGE, `PrevQuestId`=24754 WHERE `id`=24752; -- Learnin' tha Word
UPDATE `quest_template` SET `RequiredClasses`=@MAGE, `PrevQuestId`=24752 WHERE `id`=24755; -- The Arts of a Mage

 -- Added loot to Wildmane Cat (this fixes quest "A Rough Start")
UPDATE `creature_template` SET `lootid`=38046 WHERE `entry`=38046;
DELETE FROM `creature_loot_template` WHERE `entry`=38046;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
	(38046,50222,-95,1,0,1,1),
	(38046,62391,90.2,1,0,1,1),
	(38046,4813,5.9,1,0,1,1),
	(38046,5572,0.1,1,0,1,1),
	(38046,5571,0.1,1,0,1,1),
	(38046,828,0.1,1,0,1,1),
	(38046,805,0.1,1,0,1,1),
	(38046,4496,0.1,1,0,1,1);

 -- Gossip menu for quest Proving Pit
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10974;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
	(10974,0,0,'This ain\'t much of a big challenge, mon, but we gotta know ya can handle the pit before we can take ya in.',0,0,0,0,0,0,''),
	(10974,1,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,2,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,3,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,4,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,5,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,6,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,7,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL),
	(10974,8,0,'I am ready to face my challenge',1,1,0,0,0,0,NULL);

-- Gossip menu conditions for quest Proving Pit
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10974;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
	(15,10974,1,0,0,9,0,24642,0,0,0,0,'0','Troll Warrior - Prooving Pit quest active'),
	(15,10974,2,0,0,9,0,24786,0,0,0,0,'0','Troll Priest - Prooving Pit quest active'),
	(15,10974,3,0,0,9,0,24780,0,0,0,0,'0','Troll Hunter - Prooving Pit quest active'),
	(15,10974,4,0,0,9,0,24762,0,0,0,0,'0','Troll Shaman - Prooving Pit quest active'),
	(15,10974,5,0,0,9,0,24774,0,0,0,0,'0','Troll Rogue - Prooving Pit quest active'),
	(15,10974,6,0,0,9,0,24768,0,0,0,0,'0','Troll Druid - Prooving Pit quest active'),
	(15,10974,7,0,0,9,0,24754,0,0,0,0,'0','Troll Mage - Prooving Pit quest active'),
	(15,10974,8,0,0,9,0,26276,0,0,0,0,'0','Troll Warlock - Prooving Pit quest active');

 -- Todo - script the actual event for Proving Pit