
molten_sailor = {
	armor_use = tonumber(minetest.settings:get("molten_sailor.armor_use")) or 75,
}



local MP = minetest.get_modpath("molten_sailor")

dofile(MP.."/boat.lua")
dofile(MP.."/suit.lua")
dofile(MP.."/crafts.lua")
dofile(MP.."/hud.lua")
dofile(MP.."/burning.lua")
dofile(MP.."/repair.lua")

print("[OK] molten_sailor")
