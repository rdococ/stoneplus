local S = default.get_translator

local function registerManual(subname, recipeitem, groups, images,
		desc_stair, desc_slab, sounds, worldaligntex)
	stairs.register_stair(subname, recipeitem, groups, images, S(desc_stair),
		sounds, worldaligntex)
	stairs.register_stair_inner(subname, recipeitem, groups, images, "",
		sounds, worldaligntex, S("Inner " .. desc_stair))
	stairs.register_stair_outer(subname, recipeitem, groups, images, "",
		sounds, worldaligntex, S("Outer " .. desc_stair))
	stairs.register_slab(subname, recipeitem, groups, images, S(desc_slab),
		sounds, worldaligntex)
end
local function register(subname, subdesc, groups)
	local nodename = "stoneplus:" .. subname
	local def = minetest.registered_nodes[nodename]
	return registerManual(
		subname,
		nodename,
		groups,
		def.tiles,
		subdesc .. " Stair",
		subdesc .. " Slab",
		def.sounds,
		true
	)
end

register("limestone", "Limestone", {cracky = 3})
register("cobbled_limestone", "Cobbled Limestone", {cracky = 3})
register("limestone_brick", "Limestone Brick", {cracky = 2})

register("cobbled_basalt", "Cobbled Basalt", {cracky = 2})
register("basalt_brick", "Basalt Brick", {cracky = 1})
register("basalt_block", "Basalt Block", {cracky = 1})

register("slate", "Slate", {cracky = 3})
register("cobbled_slate", "Cobbled Slate", {cracky = 3})
register("slate_tile", "Slate Tile", {cracky = 3})