minetest.register_biome {
	name = "limestone_cliffs",
	
	node_stone = "stoneplus:limestone",
	node_dungeon = "stoneplus:cobbled_limestone",
	
	y_max = 10000,
	y_min = 40,
	
	heat_point = 50,
	humidity_point = 100
}
minetest.register_ore {
	ore_type = "blob",
	ore = "air",
	wherein = {"stoneplus:limestone"},
	
	clust_scarcity = 24 ^ 3,
	clust_size = 24,
	
	y_max = 10000,
	y_min = 40,
	
	noise_threshold = 0.0,
	noise_params = {
		offset = 0.5,
		scale = 0.3,
		spread = {x = 5, y = 5, z = 5},
		seed = -358,
		octaves = 1,
		persist = 0.0
	}
}
minetest.register_ore {
	ore_type = "blob",
	ore = "stoneplus:slate",
	wherein = {"default:stone"},
	
	clust_scarcity = 18 ^ 3,
	clust_size = 10,
	
	y_max = -100,
	y_min = -31000,
	
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 7346,
		octaves = 1,
		persist = 0.0
	},
}

minetest.register_biome {
	name = "basalt_columns",
	
	node_stone = "stoneplus:basalt",
	node_dungeon = "stoneplus:cobbled_basalt",
	
	y_max = 1,
	y_min = -3,
	
	heat_point = 100,
	humidity_point = 0
}
minetest.register_decoration {
	deco_type = "simple",
	place_on = "stoneplus:basalt",
	
	sidelen = 8,
	fill_ratio = 10,
	
	decoration = "stoneplus:basalt",
	
	height = 1,
	height_max = 4,
	
	flags = "force_placement, all_floors",
	
	biomes = {"basalt_columns"}
}