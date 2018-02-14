minetest.register_craft({ 	
output = 'magic_mod:electric_wand 1', 	
recipe = { 		
{'default:gold_ingot', 'default:diamond', 'default:gold_ingot'}, 		
{'', 'default:gold_ingot', ''}, 		
{'', 'default:gold_ingot', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:drak_wand 1', 	
recipe = { 		
{'default:obsidian_shard', 'magic_mod:red_diamond', 'default:obsidian_shard'}, 		
{'', 'default:obsidian_shard', ''}, 		
{'', 'default:obsidian_shard', ''}, 	
} 
})

minetest.register_craft({ 	
output = 'magic_mod:red_diamond 1', 	
recipe = { 		
{'default:diamond', 'dye:red',},
} 
})