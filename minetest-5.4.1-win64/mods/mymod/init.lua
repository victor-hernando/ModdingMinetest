minetest.register_node("mymod:stone_with_orichalcum", {
	description = "Orichalcumnode",
	tiles = {"mymod_stone_with_orichalcum.png"},
	groups = {cracky=3},
	drop = "orichalcum_lump"
})
minetest.register_craftitem("mymod:orichalcum_lump", {
	description = "BaseOrichalcum",
	inventory_image = "mymod_orichalcum_lump.png"
})
minetest.register_craftitem("mymod:orichalcum_ingot", {
	description = "Orichalcumlingote",
	inventory_image = "mymod_orichalcum_ingot.png"
})
minetest.register_craft({
	output = "mymod:orichalcum_ingot",
	recipe = {
		{"mymod:orichalcum_lump", "" },
		{"mymod:orichalcum_lump","mymod:orichalcum_lump"},
		{"mymod:orichalcum_lump","mymod:orichalcum_lump"}
	}
})
minetest.register_craft({
    type = "cooking",
    output = "mymod:orichalcum_ingot",
    recipe = "mymod:orichalcum_lump",
    cooktime = 10,
})
minetest.register_ore({
		ore_type= "blob",
		ore= "mymod:stone_with_orichalcum",
		wherein = {"default:stone"},
		clust_scarcity = 16 * 16 * 16,
		clust_size= 5,
		y_max = 31000,
		y_min = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})
minetest.register_tool("mymod:pick_orichalcum", {
	description = "PicodeOrichalcum",
	inventory_image = "mymod_pick_orichalcum.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {
				maxlevel = 2,
				uses = 20,
				times = { [1]=1.60, [2]=1.20, [3]=0.80 }
			},
		},
		damage_groups = {fleshy=2},
	},
})
