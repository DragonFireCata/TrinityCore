UPDATE `gameobject_template` SET `data1`=27742 WHERE `entry`=201610; -- 27742 loot template, item = 49744
UPDATE `gameobject_template` SET `data1`=27741 WHERE `entry`=201610; -- 27741 loot template, item = 49745
UPDATE `gameobject_template` SET `data1`=27743 WHERE `entry`=201610; -- 27743 loot template, item = 49746

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (27742,27741,27743);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
	(27742,49744,-100,1,0,1,1), -- Cask of Stormhammer Stout
	(27741,49745,-100,1,0,1,1), -- Cask of Theramore Pale Ale
	(27743,49746,-100,1,0,1,1); -- Cask of Gnomenbrau

DELETE FROM `creature_loot_template` WHERE `item` IN (49747,49748);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
	(708,49747,-70,1,0,1,1), -- Boar Haunch
	(705,49748,-75,1,0,1,1), -- Ragged Wolf Hide
	(704,49748,-75,1,0,1,1); -- Ragged Wolf Hide