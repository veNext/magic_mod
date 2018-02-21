minetest.register_tool("magic_mod:crystal_sword", {
	description = "crystal sword",
	inventory_image = "ceysral_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("magic_mod:electric_sword", {
	description = "electric sword",
	inventory_image = "electric_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("magic_mod:dark_sword", {
	description = "dark sword",
	inventory_image = "drak_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("magic_mod:ice_sword", {
	description = "ice sword",
	inventory_image = "ice_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("magic_mod:judgment_sword", {
	description = "judgment sword",
	inventory_image = "judgment_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("magic_mod:lunar_sword", {
	description = "lunar sword",
	inventory_image = "lunar_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("magic_mod:fire_sword", {
	description = "fire sword",
	inventory_image = "fire_sword.png",
  wield_scale = {x=1.5, y=3, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})
