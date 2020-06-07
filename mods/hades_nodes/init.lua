--
-- Chondrite, tuff, essexite
--

minetest.register_node("hades_nodes:chondrite", {
	description = "Chondrite",
	tiles = {"default_chondrite.png"},
	is_ground_content = true,
	groups = {cracky=2, stone=1, porous=1},
	drop = 'hades_nodes:chondrite',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:chondrite_block", {
	description = "Chondrite Block",
	tiles = {"default_chondrite_block.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:chondrite_brick", {
	description = "Chondrite Brick",
	tiles = {"default_chondrite_brick.png"},
	groups = {cracky=2, stone=1},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:tuff", {
	description = "Tuff",
	tiles = {"default_tuff.png"},
	is_ground_content = true,
	groups = {cracky=3, porous=1},
	drop = 'hades_nodes:tuff',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:tuff_block", {
	description = "Tuff Block",
	tiles = {"default_tuff_block.png"},
	is_ground_content = false,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:tuff_brick", {
	description = "Tuff Brick",
	tiles = {"default_tuff_brick.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:tuff_baked", {
	description = "Burned Tuff",
	tiles = {"default_tuff_baked.png"},
	is_ground_content = true,
	groups = {cracky=3, porous=1, burned_node=1},
	drop = 'hades_nodes:tuff_baked',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:tuff_baked_block", {
	description = "Burned Tuff Block",
	tiles = {"default_tuff_baked_block.png"},
	is_ground_content = false,
	groups = {cracky=3, burned_node=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:tuff_baked_brick", {
	description = "Burned Tuff Brick",
	tiles = {"default_tuff_baked_brick.png"},
	groups = {cracky=3, burned_node=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:essexite", {
	description = "Essexite",
	tiles = {"default_essexite.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1, porous=1},
	drop = 'hades_nodes:essexite',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:essexite_block", {
	description = "Essexite Block",
	tiles = {"default_essexite_block.png"},
	is_ground_content = false,
	groups = {cracky=2,},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:essexite_brick", {
	description = "Essexite Brick",
	tiles = {"default_essexite_brick.png"},
	groups = {cracky=1, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

--
-- Floors
--

minetest.register_node("hades_nodes:floor_chondrite_stone", {
	description = "Chondrite/Stone Block",
	tiles = {"default_floor_chondrite_stone.png"},
	is_ground_content = false,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("hades_nodes:floor_chondrite_stone2", {
	description = "Chondrite/Stone Tile",
	tiles = {
		"default_floor_chondrite_stone2.png",
		"default_floor_chondrite_stone2.png",
		"default_floor_chondrite_stone2.png",
		"default_floor_chondrite_stone2.png",
		"default_floor_chondrite_stone2.png^[transformFX",
	},
	is_ground_content = false,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("hades_nodes:floor_btuff_tuff", {
	description = "Burned Tuff/Tuff Tile",
	tiles = {
		"default_floor_btuff_tuff.png",
		"default_floor_btuff_tuff.png",
		"default_floor_btuff_tuff.png",
		"default_floor_btuff_tuff.png",
		"default_floor_btuff_tuff.png^[transformFX",
	},
	is_ground_content = false,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

--
-- Minerals
--

minetest.register_node("hades_nodes:ash", {
	description = "Volcanic Ash",
	tiles = {"default_ash.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, ash=1, porous=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("hades_nodes:ash_block", {
	description = "Volcanic Ash Block",
	tiles = {"default_ash_block.png"},
	is_ground_content = false,
	groups = {crumbly=3},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("hades_nodes:fertile_sand", {
	description = "Fertile Sand",
	tiles = {"default_fertile_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, porous=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("hades_nodes:gravel_volcanic", {
	description = "Volcanic Gravel",
	tiles = {"default_gravel_volcanic.png"},
	is_ground_content = true,
	groups = {crumbly=1, porous=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})

minetest.register_node("hades_nodes:gravel_volcanic_block", {
	description = "Volcanic Gravel Block",
	tiles = {"default_gravel_volcanic_block.png"},
	is_ground_content = false,
	groups = {crumbly=2},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})
