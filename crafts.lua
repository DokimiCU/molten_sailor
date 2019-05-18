

minetest.register_craft({
	output = "molten_sailor:helmet",
	recipe = {
		{"default:obsidian_glass", "3d_armor:helmet_diamond", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:ice", "default:obsidian_glass"},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "molten_sailor:chestplate",
	recipe = {
		{"default:obsidian_glass", "3d_armor:chestplate_diamond", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:ice", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:obsidian_glass", "default:obsidian_glass"},
	},
})

minetest.register_craft({
	output = "molten_sailor:pants",
	recipe = {
		{"default:obsidian_glass", "3d_armor:leggings_diamond", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:ice", "default:obsidian_glass"},
		{"", "", ""},
	},
})

minetest.register_craft({
	output = "molten_sailor:boots",
	recipe = {
		{"default:obsidian_glass", "3d_armor:boots_diamond", "default:obsidian_glass"},
		{"default:obsidian_glass", "default:ice", "default:obsidian_glass"},
		{"", "", ""},
	},
})
