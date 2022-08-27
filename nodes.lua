local S = default.get_translator

minetest.register_alias("limestone:limestone", "stoneplus:limestone")
minetest.register_alias("limestone:cobbled_limestone", "stoneplus:cobbled_limestone")
minetest.register_alias("limestone:limestone_brick", "stoneplus:limestone_brick")
minetest.register_alias("limestone:limestone_pillar", "stoneplus:limestone_pillar")

minetest.register_node("stoneplus:limestone", {
	description = S("Limestone"),
	tiles = {"stoneplus_limestone.png"},
	groups = {cracky = 3, stone = 1, limestone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = "stoneplus:cobbled_limestone",
})
minetest.register_node("stoneplus:cobbled_limestone", {
	description = S("Cobbled Limestone"),
	tiles = {"stoneplus_cobbled_limestone.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("stoneplus:limestone_brick", {
	description = S("Limestone Brick"),
	tiles = {
		{name = "stoneplus_limestone_brick.png", align_style = "world", scale = 2},
		{name = "stoneplus_limestone_brick_alt.png", align_style = "world", scale = 2},
		{name = "stoneplus_limestone_brick.png", align_style = "world", scale = 2},
		{name = "stoneplus_limestone_brick_alt.png", align_style = "world", scale = 2},
		{name = "stoneplus_limestone_brick.png", align_style = "world", scale = 2},
		{name = "stoneplus_limestone_brick_alt.png", align_style = "world", scale = 2},
	},
	groups = {cracky = 2, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("stoneplus:limestone_pillar", {
	description = S("Limestone Pillar"),
	tiles = {"stoneplus_limestone_pillar_top.png", "stoneplus_limestone_pillar_top.png", "stoneplus_limestone_pillar.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("stoneplus:basalt", {
	description = S("Basalt"),
	tiles = {"stoneplus_basalt_top.png", "stoneplus_basalt_top.png", "stoneplus_basalt.png"},
	groups = {cracky = 2, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = "stoneplus:cobbled_basalt",
})
minetest.register_node("stoneplus:cobbled_basalt", {
	description = S("Cobbled Basalt"),
	tiles = {"stoneplus_cobbled_basalt.png"},
	groups = {cracky = 2, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("stoneplus:basalt_brick", {
	description = S("Basalt Brick"),
	tiles = {
		{name = "stoneplus_basalt_brick.png", align_style = "world", scale = 2},
		{name = "stoneplus_basalt_brick_alt.png", align_style = "world", scale = 2},
		{name = "stoneplus_basalt_brick.png", align_style = "world", scale = 2},
		{name = "stoneplus_basalt_brick_alt.png", align_style = "world", scale = 2},
		{name = "stoneplus_basalt_brick.png", align_style = "world", scale = 2},
		{name = "stoneplus_basalt_brick_alt.png", align_style = "world", scale = 2},
	},
	groups = {cracky = 1, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("stoneplus:basalt_block", {
	description = S("Basalt Block"),
	tiles = {"stoneplus_basalt_block.png"},
	groups = {cracky = 1, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("stoneplus:slate", {
	description = S("Slate"),
	tiles = {"stoneplus_slate.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drop = "stoneplus:cobbled_slate",
})
minetest.register_node("stoneplus:cobbled_slate", {
	description = S("Cobbled Slate"),
	tiles = {"stoneplus_cobbled_slate.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("stoneplus:slate_tile", {
	description = S("Slate Tile"),
	tiles = {"stoneplus_slate_tile.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft {
	output = "stoneplus:limestone_brick 4",
	recipe = {
		{"stoneplus:limestone", "stoneplus:limestone"},
		{"stoneplus:limestone", "stoneplus:limestone"}
	},
}
minetest.register_craft {
	output = "stoneplus:basalt_brick 4",
	recipe = {
		{"stoneplus:basalt", "stoneplus:basalt"},
		{"stoneplus:basalt", "stoneplus:basalt"}
	},
}
minetest.register_craft {
	output = "stoneplus:slate_tile 4",
	recipe = {
		{"stoneplus:slate", "stoneplus:slate"},
		{"stoneplus:slate", "stoneplus:slate"}
	},
}
minetest.register_craft {
	output = "stoneplus:limestone_pillar 2",
	recipe = {
		{"stoneplus:limestone"},
		{"stoneplus:limestone"}
	},
}
minetest.register_craft {
	output = "stoneplus:basalt_block 9",
	recipe = {
		{"stoneplus:basalt", "stoneplus:basalt", "stoneplus:basalt"},
		{"stoneplus:basalt", "stoneplus:basalt", "stoneplus:basalt"},
		{"stoneplus:basalt", "stoneplus:basalt", "stoneplus:basalt"},
	},
}

minetest.register_craft {
	type = "cooking",
	output = "stoneplus:limestone",
	recipe = "stoneplus:cobbled_limestone"
}
minetest.register_craft {
	type = "cooking",
	output = "stoneplus:basalt",
	recipe = "stoneplus:cobbled_basalt"
}
minetest.register_craft {
	type = "cooking",
	output = "stoneplus:slate",
	recipe = "stoneplus:cobbled_slate"
}