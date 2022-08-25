local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/biomes.lua")

if stairs then
	dofile(modpath .. "/stairs.lua")
end