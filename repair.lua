

function repair_recipe(partname)
	minetest.register_craft({
		type = "shapeless",
		output = partname,
		recipe = {
			"default:ice",
			partname
		}
	})
end

	repair_recipe("molten_sailor:helmet")
	repair_recipe("molten_sailor:chestplate")
	repair_recipe("molten_sailor:pants")
	repair_recipe("molten_sailor:boots")
	
