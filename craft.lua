minetest.register_craft({ 	
output = 'magic_mod:electric_wand 1', 	
recipe = { 		
{'default:gold_ingot', 'magic_mod:blue_crystal', 'default:gold_ingot'}, 		
{'', 'default:gold_ingot', ''}, 		
{'', 'default:gold_ingot', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:dark_wand 1', 	
recipe = { 		
{'default:obsidian_shard', 'magic_mod:red_crystal', 'default:obsidian_shard'}, 		
{'', 'default:obsidian_shard', ''}, 		
{'', 'default:obsidian_shard', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:ice_wand 1', 	
recipe = { 		
{'', 'magic_mod:ice_crystal', ''}, 		
{'', 'default:snowblock', ''}, 		
{'', 'default:snowblock', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:judgment_wand 1', 	
recipe = { 
{'bones:bones', 'magic_mod:judgment_crystal', 'bones:bones'}, 		
{'', 'bones:bones', ''}, 		
{'', 'bones:bones', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:lunar_wand 1', 	
recipe = { 		
{'default:obsidian', 'magic_mod:lunar_crystal', 'default:obsidian'}, 		
{'', 'default:obsidian', ''}, 		
{'', 'default:obsidian', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:red_crystal 1', 	
recipe = { 		
{'magic_mod:crystal_no_color', 'bucket:bucket_lava',},
} 
})

minetest.register_craft({ 	
output = 'magic_mod:blue_crystal 1', 	
recipe = { 		
{'magic_mod:crystal_no_color', 'default:mese_crystal_fragment',},
} 
})

minetest.register_craft({ 	
output = 'magic_mod:ice_crystal 1', 	
recipe = { 		
{'default:ice', 'magic_mod:crystal_no_color', 'default:ice',},
} 
})

minetest.register_craft({ 	
output = 'magic_mod:judgment_crystal 1', 	
recipe = { 		
{'bones:bones', 'magic_mod:crystal_no_color', 'flowers:rose',},
} 
})

minetest.register_craft({ 	
output = 'magic_mod:lunar_crystal 1', 	
recipe = { 		
{'default:obsidian', 'magic_mod:crystal_no_color',},
} 
})

minetest.register_craft({ 	
output = 'magic_mod:crystal_no_color 1', 	
recipe = { 		
{'magic_mod:crystal_shard', 'magic_mod:crystal_shard', 'magic_mod:crystal_shard'}, 		
{'magic_mod:crystal_shard', 'default:diamond', 'magic_mod:crystal_shard'}, 		
{'magic_mod:crystal_shard', 'magic_mod:crystal_shard', 'magic_mod:crystal_shard'}, 	
} 
})