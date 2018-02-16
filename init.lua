dofile(minetest.get_modpath('magic_mod')..'/config.txt')
dofile(minetest.get_modpath('magic_mod')..'/functions.lua')
dofile(minetest.get_modpath('magic_mod')..'/wands.lua')
dofile(minetest.get_modpath('magic_mod')..'/basic_attack.lua')
--If Mana by Wuzzy is installed use that instead of magic points
if minetest.get_modpath("mana") then 
	dofile(minetest.get_modpath('magic_mod') .. '/mana.lua')
else
	dofile(minetest.get_modpath('magic_mod')..'/huds.lua')
end
dofile(minetest.get_modpath('magic_mod')..'/craft.lua')
dofile(minetest.get_modpath('magic_mod')..'/item.lua')
dofile(minetest.get_modpath('magic_mod')..'/drak_basic_attack.lua')
dofile(minetest.get_modpath('magic_mod')..'/ice_basic_attack.lua')
dofile(minetest.get_modpath('magic_mod')..'/nodes.lua')