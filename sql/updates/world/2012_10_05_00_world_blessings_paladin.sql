INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
	(19740,79102,0,'Blessing of Might'),
	(20217,79063,0,'Blessing of Kings');
	
INSERT IGNORE INTO `spell_group` (`id`,`spell_id`) VALUES
	(1252,79063),
	(1254,79063),
	(1253,79102),
	(1254,79102);
	
INSERT IGNORE INTO `spell_group_stack_rules` (`group_id`,`stack_rule`) VALUES
	(1252,2),
	(1253,2),
	(1254,2);