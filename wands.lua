
minetest.register_tool("magic_mod:electric_wand", {
	description = "electric wand",
	inventory_image = "wand.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		if check_mp(user, 5) then
			if shoot_magic_ball(item, user, pointed_thing) then
				use_mp(user, 5)
			end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:dark_wand", {
	description = "dark wand",
	inventory_image = "wand2.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) 
		if check_mp(user, 5) then
			if shoot_magic_drak_ball(item, user, pointed_thing) then
				use_mp(user, 5)
			end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:ice_wand", {
	description = "ice wand",
	inventory_image = "ice_wand.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) 
		if check_mp(user, 5) then
			if shoot_ice_ball(item, user, pointed_thing) then
				use_mp(user, 5)
			end
		end
		return itemstack
	end,
})