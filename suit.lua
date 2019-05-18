--effects:
--increase speed so can move nice in lava, but can't jump and useless as armor so not good as a speed suit.

armor:register_armor("molten_sailor:helmet", {
	description = "Anti-lava Suit Helmet",
	inventory_image = "molten_sailor_inv_helmet.png",
	groups = {armor_head=1, armor_heal=0, armor_fire=1, armor_use=molten_sailor.armor_use, physics_speed= 0.15,physics_gravity=0.25},
	wear = 0,
})

minetest.register_tool("molten_sailor:chestplate", {
	description = "Anti-lava Suit Chestplate",
	inventory_image = "molten_sailor_inv_chestplate.png",
	groups = {armor_torso=1, armor_heal=1, armor_fire=2, armor_use=molten_sailor.armor_use, physics_speed= 0.15, physics_gravity=0.25},
	wear = 0,
})

minetest.register_tool("molten_sailor:pants", {
	description = "Anti-lava Suit Pants",
	inventory_image = "molten_sailor_inv_pants.png",
	groups = {armor_legs=1, armor_heal=1, armor_fire=1, armor_use=molten_sailor.armor_use, physics_speed= 0.16,physics_gravity=0.25},
	wear = 0,
})

minetest.register_tool("molten_sailor:boots", {
	description = "Anti-lava Suit Boots",
	inventory_image = "molten_sailor_inv_boots.png",
	groups = {armor_feet=1, armor_heal=0, armor_fire=1, armor_use=molten_sailor.armor_use, physics_speed= 0.17,physics_gravity=0.25},
	wear = 0,
})
