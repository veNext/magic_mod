
minetest.register_tool("magic_mod:electric_wand", {
	description = "electric wand",
	inventory_image = "wand.png",
    stack_max = 1,
	on_use = function(itemstack, user, pointed_thing) if mps > 4 then
		if shoot_magic_ball(item, user, pointed_thing) then
			mps = mps - 5
		end
		end
		return itemstack
	end,
})