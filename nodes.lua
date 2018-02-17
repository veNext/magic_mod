minetest.register_node("magic_mod:crystal_ore", {
description = "crystal ore",
tiles = {"default_stone.png^crystal_ore.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},
drop = "magic_mod:crystal_shard"
})

minetest.register_ore({ 
ore_type = "scatter", 
ore = "magic_mod:crystal_ore", 
wherein = "default:stone", 
clust_scarcity = 8*8*8, 
clust_num_ores = 1, 
clust_size = 3, 
height_min = -31000, 
height_max = 0, })