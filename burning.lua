



local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer + dtime;
	if timer >= 1 then
		local t0 = minetest.get_us_time()

		for _,player in ipairs(minetest.get_connected_players()) do
			local name = player:get_player_name()

			local name, armor_inv = armor.get_valid_player(armor, player, "[molten_sailor]")

			local has_helmet = armor_inv:contains_item("armor", "molten_sailor:helmet")
			local has_chestplate = armor_inv:contains_item("armor", "molten_sailor:chestplate")
			local has_pants = armor_inv:contains_item("armor", "molten_sailor:pants")
			local has_boots = armor_inv:contains_item("armor", "molten_sailor:boots")
			local has_ms = armor_inv:contains_item("armor", "molten_sailor:molten_sailor")

			local has_full_suit = has_helmet and has_chestplate and has_pants and has_boots

			local armor_list = armor_inv:get_list("armor")

			-- does the player wear a suit?
			molten_sailor.set_player_wearing(player, has_full_suit, has_helmet, armor_list)

			--is player on fire?
			local pos = player:get_pos()
			local on_fire = minetest.find_node_near(pos, 1, {"default:lava_source","default:lava_flowing","fire:basic_flame", "fire:permanent_flame"})

			if on_fire and (has_helmet or has_chestplate or has_pants or has_boots)  then

				for i, stack in pairs(armor_inv:get_list("armor")) do
					if not stack:is_empty() then
						local name = stack:get_name()
						local use = minetest.get_item_group(name, "armor_use") or 0
						armor:damage(player, i, stack, use)
					end
				end
				minetest.sound_play("fire_extinguish_flame", {pos = pos,max_hear_distance = 2,	gain = 0.1,})


				if player:get_breath() < 3 then
					player:set_breath(3)
				end
			end
		end
		timer = 0

	        local t1 = minetest.get_us_time()
	        local diff = t1 - t0
	        if diff > 10000 then
	                minetest.log("warning", "[molten_sailor] update took " .. diff .. " us")
	        end
	end
end)
