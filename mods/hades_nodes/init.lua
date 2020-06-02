--
-- Stone, chondrite, tuff, essexite
--

minetest.register_node("hades_nodes:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, porous=1},
	drop = 'hades_nodes:cobble',
	sounds = default.node_sound_stone_defaults(),
})

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


minetest.register_node("hades_nodes:gravel", {
	description = "Gravel",
	tiles = {"default_gravel.png"},
	is_ground_content = true,
	groups = {crumbly=2, falling_node=1, porous=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})

minetest.register_node("hades_nodes:gravel_block", {
	description = "Gravel Block",
	tiles = {"default_gravel_block.png"},
	is_ground_content = false,
	groups = {crumbly=2},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
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

---
--- Liquids
---

local WATER_ALPHA = 160
local WATER_VISC = 1
local LAVA_VISC = 7
local LIGHT_MAX = minetest.LIGHT_MAX - 1

minetest.register_node("hades_nodes:water_flowing", {
	description = "Water (flowing)",
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			image="default_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="default_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	alpha = WATER_ALPHA,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "hades_nodes:water_flowing",
	liquid_alternative_source = "hades_nodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})

minetest.register_node("hades_nodes:water_source", {
	description = "Water",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	--tiles = {"default_water.png"},
	tiles = {
		{
			name = "default_water_source_animated.png",
			animation = {type="sheet_2d", frames_w=1, frames_h=16, frame_length=0.5}
		}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{name = "default_water.png", backface_culling = false},
	},
	alpha = WATER_ALPHA,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "hades_nodes:water_flowing",
	liquid_alternative_source = "hades_nodes:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})

minetest.register_node("hades_nodes:river_water_source", {
	description = "River Water Source",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	--tiles = {"default_water.png"},
	tiles = {
		{
			name = "default_water_source_animated.png",
			animation = {type="sheet_2d", frames_w=1, frames_h=16, frame_length=0.5}
		}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{name = "default_water.png", backface_culling = false},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "hades_nodes:river_water_flowing",
	liquid_alternative_source = "hades_nodes:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
})

minetest.register_node("hades_nodes:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			image="default_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="default_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "hades_nodes:river_water_flowing",
	liquid_alternative_source = "hades_nodes:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
})

minetest.register_node("hades_nodes:lava_flowing", {
	description = "Lava (flowing)",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "flowingliquid",
	tiles ={"default_lava.png"},
	special_tiles = {
		{
			image="default_lava_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="default_lava_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	paramtype = "light",
	light_source = LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "hades_nodes:lava_flowing",
	liquid_alternative_source = "hades_nodes:lava_source",
	liquid_viscosity = LAVA_VISC,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3},
})

minetest.register_node("hades_nodes:lava_source", {
	description = "Lava",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "liquid",
	--tiles ={"default_lava.png"},
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {type="sheet_2d", frames_w=1, frames_h=16, frame_length=0.5}
		}
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{name="default_lava.png", backface_culling=false},
	},
	paramtype = "light",
	light_source = LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "hades_nodes:lava_flowing",
	liquid_alternative_source = "hades_nodes:lava_source",
	liquid_viscosity = LAVA_VISC,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3},
})

