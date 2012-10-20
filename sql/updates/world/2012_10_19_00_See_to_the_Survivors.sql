DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=86264;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
	(17,0,86264,0,0,31,1,3,46268,0,0,0,'0','Activate Teleport Beacon - Hits only Survivor');

DELETE FROM `smart_scripts` WHERE `entryorguid`=46268;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
	(46268,0,0,1,8,0,100,0,'86264','0','0','0',33,'46268','0','0','0','0','0',7,'0','0','0','0','0','0','0','Survivor: On spell hit - give credit.'),
	(46268,0,1,0,61,0,100,0,'0','0','0','0',41,'1000','0','0','0','0','0',1,'0','0','0','0','0','0','0','Survivor: After spell hit - despawn after 1 sec');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry`=46268;