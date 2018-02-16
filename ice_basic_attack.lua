blue_ball = {
	{"magic_mod:ice_ball", "magic_mod:ice_ball_entity"},
}

 shoot_ice_ball = function(itemstack, player)
	for _,ice_ball in ipairs(blue_ball) do
			local playerpos = player:getpos()
			local obj = minetest.add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, ice_ball[2])
			local dir = player:get_look_dir()
			obj:setvelocity({x=dir.x*19, y=dir.y*19, z=dir.z*19})
			obj:setacceleration({x=dir.x, y=dir.y, z=dir.z})
			obj:setyaw(player:get_look_yaw()+math.pi)
			if obj:get_luaentity().player == "" then
				obj:get_luaentity().player = player
			end
			obj:get_luaentity().node = player:get_inventory():get_stack("main", 1):get_name()
			return true
		end
	
	return false
end

local ice_ball={
	physical = false,
	timer=0,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5},
	textures = {"ice_ball.png"},
	lastpos={},
	collisionbox = {0,0,0,1,1,1},
}

ice_ball.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	minetest.add_particlespawner({ 	
amount = 1, 	
time = 0.10, 	
minpos = {x=pos.x, y=pos.y, z=pos.z}, 	
maxpos = {x=pos.x, y=pos.y, z=pos.z}, 		
minexptime = 0.1, 	
maxexptime = 0.2, 	
minsize = 0.50, 	
maxsize = 0.50, 	collisiondetection = false, 	
vertical = false, 	
texture = "ice_dot.png", 
playername = "singleplayer"
	 })
	if self.timer>0.2 then
		local objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "magic_mod:ice_ball_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 1
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					minetest.add_particlespawner({ 	
amount = 50, 	
time = 0.10, 	
minpos = {x=pos.x - 1, y=pos.y - 1, z=pos.z - 1}, 	
maxpos = {x=pos.x + 1, y=pos.y + 1, z=pos.z + 1}, 		
minexptime = 0.1, 	
maxexptime = 0.2, 	
minsize = 0.50, 	
maxsize = 0.50, 	collisiondetection = false, 	
vertical = false, 	
texture = "ice_dot.png", 
playername = "singleplayer"
	 })
					self.object:remove()
				end
			else
				local damage = 1
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
		  if node.name ~= "default:water_source" then
		    if node.name ~= "default:water_flowing" then
	 minetest.add_particlespawner({ 	
amount = 50, 	
time = 0.10, 	
minpos = {x=pos.x - 1, y=pos.y - 1, z=pos.z - 1}, 	
maxpos = {x=pos.x + 1, y=pos.y + 1, z=pos.z + 1}, 		
minexptime = 0.1, 	
maxexptime = 0.2, 	
minsize = 0.50, 	
maxsize = 0.50, 	collisiondetection = false, 	
vertical = false, 	
texture = "ice_dot.png", 
playername = "singleplayer"
	 })
	  	self.object:remove()
	   	end
		end
	end
end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("magic_mod:ice_ball_entity", ice_ball)
--next