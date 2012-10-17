DELETE FROM `spell_area` WHERE `spell` IN (55173,55164) AND `area` IN (5034,4922,5042,5146);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
	(55173,5034,0,0,0,8326,8,2,1), -- Uldum
	(55164,5034,0,0,0,8326,65527,2,1), -- Uldufm (Night Elf)
	(55173,4922,0,0,0,8326,8,2,1), -- Twilight Highlands
	(55164,4922,0,0,0,8326,65527,2,1),  -- Twilight Highlands (Night Elf)
	(55173,5042,0,0,0,8326,8,2,1), -- Deepholm
	(55164,5042,0,0,0,8326,65527,2,1),  -- Deepholm (Night Elf)
	(55173,5146,0,0,0,8326,8,2,1), -- Vashj'ir
	(55164,5146,0,0,0,8326,65527,2,1);  -- Vashj'ir (Night Elf)

DELETE FROM `game_graveyard_zone` WHERE `id` IN (1969,1458,1459,1460,109,389); -- STV is now 2 different zones. Re insert the graveyards for them.
INSERT IGNORE INTO `game_graveyard_zone` (`id`,`ghost_zone`,`faction`) VALUES
 -- Uldum
 	('1818','5034','0'), 
	('1819','5034','0'),
	('1820','5034','0'),
	('1821','5034','0'),
	('1822','5034','0'),
	('1823','5034','0'),
	('1824','5034','0'),
	('1856','5034','0'),
 -- The Vortex Pinnacle
	('1856','5035','0'),
 -- Throne of the Four Winds
	('1824','5638','0'),
 -- Lost City of the Tol'vir
	('1821','5396','0'),
 -- Halls of Origination
	('1823','4945','0'),
 -- Hyjal
	('1741','616','0'),
	('1742','616','0'),
	('1743','616','0'),
	('1744','616','0'),
	('1755','616','0'),
 -- Firelands
	('1744','5723','0'),
 -- Twilight Highlands
	('1846','4922','0'),
	('1961','4922','0'),
	('1800','4922','0'),
	('1801','4922','0'),
	('1802','4922','0'),
	('1803','4922','0'),
	('1804','4922','0'),
	('1812','4922','0'),
	('1813','4922','0'),
	('1814','4922','0'),
	('1815','4922','0'),
	('1816','4922','0'),
	('1805','4922','0'),
 -- Bastion of Twilight
	('1846','5334','0'),
 -- Grim Batol
	('1812','4922','0'),
 -- Southern Barrens
 	('1706','4709','0'),
 	('1707','4709','0'),
 	('1768','4709','0'),
 	('1769','4709','0'),
 	('1709','4709','0'),
 	('1710','4709','0'),
 	('1872','4709','0'),
 	('1873','4709','0'),
 -- Wailing Caverns
	('1855','718','0'),
 -- Razorfen Downs
	('1873','722','0'),
 -- Razorfen Kraul
	('1872','491','0'),
 -- Tol Barad Peninsula
	('1862','5389','469'), -- Alliance Daily North
	('1863','5389','67'), -- Horde Daily North
	('1807','5389','67'), -- Graveyard',' Horde Daily
	('1808','5389','469'), -- Graveyard',' Alliance Daily
 -- Tol Barad
	('1783','5095','0'), -- Graveyard',' Ironclad Garrison
	('1784','5095','0'), -- Graveyard',' West Spire
	('1785','5095','0'), -- Graveyard',' Warden/'s Vigil
	('1786','5095','0'), -- Graveyard',' South Spire
	('1787','5095','0'), -- Graveyard',' Slagworks
	('1788','5095','0'), -- Graveyard',' East Spire
	('1789','5095','0'), -- Graveyard',' Baradin Hold
	('1825','5095','0'), -- East Spire 01
	('1826','5095','0'), -- East Spire 02
	('1827','5095','0'), -- Slagworks 01
	('1828','5095','0'), -- Slagworks 02
	('1829','5095','0'), -- South Spire 01
	('1830','5095','0'), -- South Spire 02
	('1831','5095','0'), -- Warden/'s Vigil 01
	('1832','5095','0'), -- Warden/'s Vigil 02
	('1833','5095','0'), -- West Spire 01
	('1834','5095','0'), -- West Spire 02
	('1835','5095','0'), -- West Spire 03
	('1836','5095','0'), -- Ironclad Garrison 01
	('1837','5095','0'), -- Ironclad Garrison 02
	('1838','5095','0'), -- Ironclad Garrison 03
	('1839','5095','0'), -- South Spire 03
	('1840','5095','0'), -- Warden/'s Vigil 03
	('1841','5095','0'), -- West Spire 04
	('1842','5095','0'), -- East Spire 03
	('1843','5095','0'), -- Slagworks 03
 --Baradin Hold
	('1789','5600','0'),
 -- Darkmoon Island
	('3212','5861','0'),
 -- Deepholm
	('1790','5042','0'), -- Deepholm Twilight Overlook GY
	('1791','5042','0'), -- Deepholm Central East GY
	('1792','5042','0'), -- Deepholm Fractured Battlefront GY
	('1793','5042','0'), -- Deepholm Needlerock Chasm GY
	('1794','5042','0'), -- Deepholm Shattered Field GY
	('1795','5042','0'), -- Deepholm Twilight Terrace GY
	('1796','5042','0'), -- Deepholm Stone Hearth GY
	('1756','5042','0'), -- Deepholm Crimson Expanse GY
	('1757','5042','0'), -- Deepholm Temple of Earth GY
	('1758','5042','0'), -- Deepholm Shuddering Spires GY
 -- The Stonecore
	('1757','5088','0'),
 -- Vashj'ir
	('1745','5146','0'), -- Vashj'ir Marianas Face GY
	('1746','5146','0'), -- Vashj'ir Korthuns End GY
	('1747','5146','0'), -- Vashj'ir Deepfin Ridge GY
	('1778','5146','0'), -- Vashj'ir The Abyssal Maw
	('1721','5146','0'), -- Vashj'ir Central Ruins GY
	('1722','5146','0'), -- Vashj'ir Silver Tide Trench GY
	('1723','5146','0'), -- Vashj'ir Mid Kelp Shelf GY
	('1724','5146','0'), -- Vashj'ir Early Kelp Shelf GY
	('1725','5146','0'), -- Vashj'ir Vrykul Shelf GY
 -- Redridge Mountains
	('2','44','0'),
 -- Dun Morogh
	('5','1','0'),
 -- Programmer Isle
	('549','22','0'), -- Programmer Isle
	('931','22','0'), -- Programmer Isle
	('932','22','0'), -- Programmer Isle
 -- Hellfire Peninsula
	('935','3483','0'), -- Hellfire Peninsula Corpse Location 004
 -- Isle of QuelDanas
	('1294','4080','0'), -- Isle of QuelDanas Staging Area GY
 -- Development Land
	('1295','22','0'), -- Development Land Theresas Test Land GY
	('1296','22','0'), -- Development Land Theresas Test Land 2 GY
	('1297','22','0'), -- Development Land Theresas Test land 3 GY
	('996','22','0'), -- Test - Programmer
	('997','22','0'), -- Test - Programmer 001
 -- Dustwallow Marsh
	('1681','15','0'), -- Dustwallow Marsh The Wyrmbog GY
	('1373','15','0'), -- Dustwallow Marsh Theramore Safe
 -- The Lost Isles
	('1488','4720','0'), -- The Lost Isles - Shipwreck Shore GY
	('1489','4720','0'), -- The Lost Isles - Orc Camp GY
	('1491','4720','0'), -- The Lost Isles - Wild Overlook GY
	('1492','4720','0'), -- The Lost Isles - Alliance Beachhead GY
	('1496','4720','0'), -- The Lost Isles - Vengeance Wake - Phase 3 GY
	('1497','4720','0'), -- The Lost Isles - Vengeance Wake - Phase 4 GY
	('1702','4720','0'), -- The Lost Isles - Town-In-A-Box Phase 5 6 7 GY
	('1703','4720','0'), -- The Lost Isles - Ruins of Vashjelan GY
	('1704','4720','0'), -- The Lost Isles - Lost Peak - Phase 5 6 7 GY
	('1705','4720','0'), -- The Lost Isles - Lost Caldera - Phase 5 6 7 GY
	('1708','4720','0'), -- The Lost Isles - Warchiefs Lookout - Phase 5 6 7 8 9 10 GY
	('1711','4720','0'), -- The Lost Isles - Sky Falls - Phase 8 9 10 GY
	('1712','4720','0'), -- The Lost Isles - Verdant Highlands - Phase 8 9 10 GY
	('1713','4720','0'), -- The Lost Isles - Bilgewater Lumber Yard - Phase 5 6 7 8 9 10 GY
	('1714','4720','0'), -- The Lost Isles - Small Island Safe Loc
	('1715','4720','0'), -- The Lost Isles - Big Island Safe Loc
	('1716','4720','0'), -- The Lost Isles - Oomlot Village GY
	('1773','4720','0'), -- The Lost Isles - Volcanoths Lair - Phase 8 GY
	('1689','4720','0'), -- Kezan - KTC Headquarters GY
	('1690','4720','0'), -- Kezan - Bilgewater Port GY
 -- Gilneas
	('1810','4706','67'), -- Ruins of Gilneas Forward Command GY
	('1811','4706','469'), -- Ruins of Gilneas Emberstone Village GY
	('1494','4714','0'), -- Gilneas - Duskhaven
	('1495','4714','0'), -- Gilneas - Farmstead GY
	('1692','4714','0'), -- Gilneas City - Merchant Quarter Graveyard
	('1693','4714','0'), -- Gilneas City - Military District Graveyard
	('1694','4714','0'), -- Gilneas City - Greymane Square Graveyard
	('1695','4714','0'), -- Gilneas City - Cathedral Graveyard
	('1696','4714','0'), -- Gilneas - Stormglen Graveyard
	('1697','4714','0'), -- Gilneas - Blackwald Graveyard
	('1698','4714','0'), -- Gilneas - Tempests Reach Graveyard 2
	('1699','4714','0'), -- Gilneas - Aderics Repose Graveyard
	('1701','4755','0'), -- Gilneas - Market GY
	('1866','4714','0'), -- Gilneas - Stagecoach Graveyard
 -- Molten Front
	('2807','5733','0'), -- Molten Front Malfurions Breach GY
	('2808','5733','0'), -- Molten Front Portal GY
	('2809','5733','0'), -- Molten Front Spider GY
 -- Durotar Echo Isles
	('1700','14','0'), -- Durotar Echo Isles GY
 -- Zul'Gurub
	('1969','1977','0'), -- Stranglethorn Vale ZulGurub GY
 -- Northern Stranglethorn
	('1969','5339','0'), -- Stranglethorn Vale ZulGurub GY
	('1459','5339','0'), -- Stranglethorn Vale Central GY
	('1460','5339','0'), -- Stranglethorn Vale Savage Coast GY
	('389','5339','0'), -- Stranglethorn Vale Northern Stranglethorn GY
 -- The Cape of Stranglethorn
	('1458','214','0'), -- Stranglethorn Vale Gurubashi Arena GY
	('1458','5339','0'),
	('109','5339','0'),
	('109','214','0'); -- Stranglethorn Vale Booty Bay GY