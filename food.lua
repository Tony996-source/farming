
local S = farming.intllib

--= Sugar

minetest.register_craftitem("farming:sugar", {
	description = S("Sugar"),
	inventory_image = "farming_sugar.png",
	groups = {food_sugar = 1, flammable = 3},
})

minetest.register_craft({
	type = "cooking",
	cooktime = 3,
	output = "farming:sugar 2",
	recipe = "default:papyrus",
})

minetest.after(0, function()

	local fluid = "bucket:bucket_water"
	local fluid_return = "bucket:bucket_water"

	if minetest.get_modpath("mobs") and mobs and mobs.mod == "redo" then
		fluid = "group:food_milk"
		fluid_return = "mobs:bucket_milk"
	end
	end
	)
