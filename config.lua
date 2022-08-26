-- CONFIG FILE
-- IMPORTANT NOTE: The main part of the script is done here.


-- TABLES
Config = {}
Sprites = {}
Colors = {}
DisplayModes = {}
Languages = {}


--------------------------------------------------------------------
------------------------ BLIP COMMON DATA --------------------------
--------------------------------------------------------------------

-- SPRITES
Sprites = {
	['radar_area_blip'] = 5,
	['radar_waypoint'] = 8,
	['radar_radius_blip'] = 9,
	['radar_radius_outline_blip'] = 10,
	['radar_police_plane_move'] = 16,
	['radar_raceflag'] = 38,
	['radar_safehouse'] = 40,
	['radar_crim_drugs'] = 51,
	['radar_cop_patrol'] = 56,
	['radar_police_station'] = 60,
	['radar_hospital'] = 61,
	['radar_helicopter'] = 64,
	['radar_random_character'] = 66,
	['radar_tow_truck'] = 68,
	['radar_barber'] = 71,
	['radar_car_mod_shop'] = 72,
	['radar_clothes_store'] = 73,
	['radar_tattoo'] = 75,
	['radar_vinewood_tours'] = 85,
	['radar_jewelry_heist'] = 88,
	['radar_bar'] = 93,
	['radar_base_jump'] = 94,
	['radar_car_wash'] = 100,
	['radar_comedy_club'] = 102,
	['radar_financier_strand'] = 108,
	['radar_gun_shop'] = 110,
	['radar_strip_club'] = 121,
	['radar_weed_stash'] = 140,
	['radar_camera'] = 184,
	['radar_taxi'] = 198,
	['radar_gang_vehicle'] = 225,
	['radar_gang_vehicle_bikers'] = 226,
	['radar_chop'] = 273,
	['radar_dead'] = 274,
	['radar_simeon_family'] = 293,
	['radar_bounty_hit'] = 303,
	['radar_ugc_mission'] = 304,
	['radar_plane_drop'] = 307,
	['radar_cratedrop'] = 306,
	['radar_garbage'] = 318,
	['radar_property_for_sale'] = 350,
	['radar_gang_attack_package'] = 351,
	['radar_boost'] = 354,
	['radar_dock'] = 356,
	['radar_garage'] = 357,
	['radar_jerry_can'] = 361,
	['radar_spawn_point_pickup'] = 364,
	['radar_contraband'] = 478,
	['radar_production_weed'] = 496,
	['radar_production_crack'] = 497,
	['radar_production_meth'] = 499,
	['radar_production_money'] = 500,
	['radar_laptop'] = 521,
	['radar_gr_moc_upgrade'] = 566,
	['radar_sm_cargo'] = 568,
	['radar_sm_hangar'] = 569,
	['radar_tf_checkpoint'] = 570,
	['radar_bat_hack_target'] = 620,
	['radar_cctv'] = 629,
	['radar_casino'] = 679,
	['radar_casino_table_games'] = 680,
	['radar_casino_wheel'] = 681,
	['radar_casino_concierge'] = 682,
	['radar_casino_chips'] = 683,
	['radar_casino_horse_racing'] = 684,
	['radar_limo'] = 724,
	['radar_power_switch'] = 769,
	['radar_keypad'] = 772,
	['radar_docks_export'] = 780,
	['radar_test_car'] = 782,
	['radar_export_vehicle'] = 794,
	['radar_vehicle_for_sale'] = 810,
	['radar_explosive_charge'] = 822
}


-- COLORS
Colors = {
	['white'] = 0,
	['red'] = 1,
	['green'] = 2,
	['blue'] = 3,
	['yellow'] = 5,
	['light_red'] = 6,
	['violet'] = 7,
	['pink'] = 8,
	['light_orange'] = 9,
	['light_brown'] = 10,
	['light_green'] = 11,
	['light_blue'] = 12,
	['light_purple'] = 13,
	['dark_purple'] = 14,
	['cyan'] = 15,
	['light_yellow'] = 16,
	['orange'] = 17,
	['dark_pink'] = 19,
	['dark_yellow'] = 20,
	['dark_orange'] = 21,
	['light_grey'] = 22,
	['light_pink'] = 23,
	['lemon_green'] = 24,
	['forest_green'] = 25,
	['electric_blue'] = 26,
	['bright_purple'] = 27,
	['dark_blue'] = 29,
	['dark_cyan'] = 30,
	['beige'] = 36,
	['dark_grey'] = 40,
	['gold'] = 46,
	['brilliant_rose'] = 48,
	['medium_purple'] = 50,
	['salmon'] = 51,
	['dark_green'] = 52,
	['blizzard_blue'] = 53,
	['oracle_blue'] = 54,
	['silver'] = 55,
	['east_bay'] = 58,
	['yellow_orange'] = 60,
	['mulberry_pink'] = 61,
	['alto_grey'] = 62,
	['jelly_bean_blue'] = 63,
	['mamba'] = 65,
	['deep_red'] = 76,
	['transparent_red'] = 79,
	['transparent_blue'] = 80,
	['purple'] = 83,
	['transparent_black'] = 85
}


-- DISPLAY MODES
-- 0 = Doesn't show up, ever, anywhere. 
-- 1 = Doesn't show up, ever, anywhere.
-- 2 = Shows on both main map and minimap. (Selectable on map)
-- 3 = Shows on main map only. (Selectable on map)
-- 4 = Shows on main map only. (Selectable on map) 
-- 5 = Shows on minimap only. 
-- 6 = Shows on both main map and minimap. (Selectable on map)
-- 7 = Doesn't show up, ever, anywhere. 
-- 8 = Shows on both main map and minimap. (Not selectable on map)
-- 9 = Shows on minimap only.
-- 10 = Shows on both main map and minimap. (Not selectable on map)

DisplayModes = {
	['map_and_minimap_selectable'] = 2,
	['map_only'] = 3,
	['minimap_only'] = 5,
	['map_and_minimap_not_selectable'] = 8
}


--------------------------------------------------------------------
------------------------ BLIP CUSTOM DATA --------------------------
--------------------------------------------------------------------

-- LANGUAGES
Languages = {
	['es'] = {
		['money_laundry'] = "Lavandería de Dinero",
		['simeon'] = "Simeón"
	},
	['en'] = {
		['money_laundry'] = "Money Laundry",
		['simeon'] = "Simeon"
	},
	['fr'] = {
		['money_laundry'] = "Blanchiment d'argent",
		['Simeon'] = "Siméon"
	},
	['de'] = {
		['money_laundry'] = "Geldwäsche",
		['Simeon'] = "Simeon"
	},
	['it'] = {
		['money_laundry'] = "riciclaggio di denaro",
		['Simeon'] = "Simeone"
	}
}

Config.Language_Selected = "es"


-- BLIPS
Config.Blips = {
	-- Examples
	{	-- Blip for a Money Laundry
		label = Languages[Config.Language_Selected]['money_laundry'], 
		sprite = Sprites['radar_production_money'], 
		color = Colors['red'], 
		scale = 1.0,
		display_mode = DisplayModes['map_and_minimap_selectable'], 
		short_range = true,
		x = 999.1253, 
		y = -1785.257, 
		z = 31.46448
	},
	{	-- Blip for Simeon's missions
		label = Languages[Config.Language_Selected]['simeon'], 
		sprite = Sprites['radar_simeon_family'], 
		color = Colors['blue'], 
		scale = 1.0,
		display_mode = DisplayModes['map_and_minimap_selectable'], 
		short_range = true,
		x = -25.0, 
		y = -1100.0, 
		z = 32.0
	}
}