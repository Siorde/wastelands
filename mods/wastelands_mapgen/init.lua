--
-- Aliases for map generator outputs
-- Those aliases replace classic map generation nodes with ash, cobble, stone, tuff and lava
--

-- TODO : retirer les définitions de lava et water de hades_nodes, et remplacer les usages par les versions default, idem pour stone et compagnie (tout ce qui se trouve en default)
minetest.register_alias("mapgen_air", "air")
minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_dirt", "hades_nodes:ash")
minetest.register_alias("mapgen_dirt_with_grass", "hades_nodes:ash")
minetest.register_alias("mapgen_sand", "hades_nodes:ash")
minetest.register_alias("mapgen_water_source", "default:lava_source")
minetest.register_alias("mapgen_river_water_source", "default:lava_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_gravel", "default:lava_source")
minetest.register_alias("mapgen_desert_stone", "default:stone")
minetest.register_alias("mapgen_desert_sand", "hades_nodes:ash")
minetest.register_alias("mapgen_dirt_with_snow", "hades_nodes:ash")
minetest.register_alias("mapgen_snowblock", "hades_nodes:ash")
minetest.register_alias("mapgen_snow", "hades_nodes:ash")
minetest.register_alias("mapgen_ice", "default:stone")
minetest.register_alias("mapgen_sandstone", "hades_nodes:tuff")

--
-- v7 map generator settings
--

minetest.set_mapgen_setting("mg_name", "v7")
minetest.set_mapgen_setting("mg_flags", "nodungeons, nodecorations, nobiomes, nofloatlands")

--
-- Lava and water generation
--

minetest.register_ore({
	ore            = "default:water_source", -- water
	ore_type       = "scatter",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 50*50*50, -- infrequent and medium sized
	clust_num_ores = 10,
	clust_size     = 4,
	y_min          = -10000,
	y_max          = 40,
})

minetest.register_ore({
	ore              = "default:lava_source", -- lava
	ore_type         = "blob",
	wherein          = {"default:stone"},
	clust_scarcity   = 25*25*25, -- frequent and medium sized
	clust_size       = 10,
	y_min            = -30000,
	y_max            = -10, -- only very low Y
	noise_threshold  = 0.2,
	noise_params     = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 500, y = 500, z = 500},
		seed = 666,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore              = "default:lava_source", -- lava
	ore_type         = "blob",
	wherein          = {"default:stone"},
	clust_scarcity   = 50*50*50, -- infrequent and small sized
	clust_size       = 5,
	y_min            = -10, -- above Y=0
	y_max            = 31000,
	noise_threshold  = 0.0,
	noise_params     = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 666,
		octaves = 1,
		persist = 0.0
	},
})

--
-- Ash and stone irregulaties (what makes the terrain unsmooth)
--

minetest.register_decoration({
	decoration = "default:stone", -- stone
	deco_type = "simple",
	place_on = {"default:stone"},
	sidelen = 16,
	noise_params = {
		offset = 0.01,
		scale = 0.007,
		spread = {x = 5, y = 5, z = 5},
		seed = 333,
		octaves = 0.5,
		persist = 0.0
	},
	y_min = 1,
	y_max = 100,
	height = 1,
	height_max = 2,
})

minetest.register_decoration({
	decoration = "hades_nodes:ash", -- ash
	deco_type = "simple",
	place_on = {"default:stone"},
	sidelen = 16,
	noise_params = {
		offset = 0.5,
		scale = 0.1,
		spread = {x = 10, y = 5, z = 10},
		seed = 555,
		octaves = 1,
		persist = 0.0
	},
	y_min = 1,
	y_max = 100,
})

--
-- Ash, tuff, chondrite, essexite, gravel
--

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:ash",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 5*5*3,
	clust_size     = 5,
	y_min     = -120,
	y_max     = 31000,
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:tuff",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 25*25*25,
	clust_num_ores = 10000,
	clust_size     = 12,
	y_min     = -100,
	y_max     = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:chondrite",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 50,
	clust_size     = 10,
	y_min     = -149,
	y_max     = 10,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:chondrite",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 550,
	clust_size     = 10,
	y_min     = -31000,
	y_max     = -150,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:chondrite",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 650,
	clust_size     = 10,
	y_min     = -31000,
	y_max     = -10000,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:essexite",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 50,
	clust_size     = 5,
	y_min     = -350,
	y_max     = -300,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:essexite",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 500,
	clust_size     = 10,
	y_min     = -31000,
	y_max     = -600,
	flags          = "absheight",
})		

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "hades_nodes:essexite",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 20*10*20,
	clust_num_ores = 950,
	clust_size     = 10,
	y_min     = -31000,
	y_max     = -10000,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:gravel",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 20*5*20,
	clust_num_ores = 150,
	clust_size     = 10,
	y_min     = -10,
	y_max     = 0,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:gravel",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 20*5*20,
	clust_num_ores = 350,
	clust_size     = 10,
	y_min     = -70,
	y_max     = -50,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:gravel",
	ore_param2     = 128,
	wherein        = "default:stone",
	clust_scarcity = 20*10*20,
	clust_num_ores = 500,
	clust_size     = 10,
	y_min     = -140,
	y_max     = -120,
})

--
-- Ore generation
--
