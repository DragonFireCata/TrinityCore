 -- Fix transport flags
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry` IN (186238,181646,176310,176231,175080,164871,20808);
 -- [PH location] fix Deeprun Tram to Stormwind exit. Need blizzlike location!
UPDATE `areatrigger_teleport` SET `target_position_x`=-8369.93,`target_position_y`=530.28,`target_position_z`=84.54 WHERE `id`=2171;