function use_mp(user, ammount)
	if minetest.get_modpath("mana") then
		if mana.subtract(user:get_player_name(), ammount) then
			return true
		else
			return false
		end
	else
		if mps > ammount then
			mps = mps - ammount
			return true
		else
			return false
		end
	end
end

function check_mp(user, ammount)
	if minetest.get_modpath("mana") then
		if mana.get(user:get_player_name()) > ammount then
			return true
		else
			return false
		end
	else
		if mps > ammount then
			return true
		else
			return false
		end
	end
end