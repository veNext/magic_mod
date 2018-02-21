
minetest.register_tool("magic_mod:electric_wand", {
	description = "electric wand",
	inventory_image = "wand.png",
wield_scale = {x=2, y=3, z=1},
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_magic_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:dark_wand", {
	description = "dark wand",
	inventory_image = "wand2.png",
wield_scale = {x=2, y=3, z=1},
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_magic_drak_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:ice_wand", {
	description = "ice wand",
	inventory_image = "ice_wand.png",
wield_scale = {x=2, y=3, z=1},
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_ice_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:judgment_wand", {
	description = "judgment wand",
	inventory_image = "hp_wand.png",
wield_scale = {x=2, y=3, z=1},
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_judgment_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:lunar_wand", {
	description = "lunar wand",
	inventory_image = "lunar_wand.png",
wield_scale = {x=2, y=3, z=1},
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_lunar_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})

minetest.register_tool("magic_mod:fire_wand", {
	description = "fire wand",
	inventory_image = "wand3.png",
wield_scale = {x=2, y=3, z=1},
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_fire_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})
