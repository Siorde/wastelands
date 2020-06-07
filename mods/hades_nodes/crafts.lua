--
-- Chondrite
--

minetest.register_craft({
	output = 'hades_core:chondrite_block',
	recipe = {
		{'hades_core:chondrite', 'hades_core:chondrite', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'hades_core:chondrite', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'hades_core:chondrite', 'hades_core:chondrite'},
	}
})

minetest.register_craft({
	output = 'hades_core:chondrite 9',
	recipe = {
		{'hades_core:chondrite_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:chondrite_brick 4',
	recipe = {
		{'hades_core:chondrite', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'hades_core:chondrite'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_chondrite_stone 9',
	recipe = {
		{'hades_core:chondrite', 'default:stone', 'hades_core:chondrite'},
		{'default:stone', 'hades_core:chondrite', 'default:stone'},
		{'hades_core:chondrite', 'default:stone', 'hades_core:chondrite'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_chondrite_stone2 4',
	recipe = {
		{'hades_core:chondrite', 'default:stone'},
		{'default:stone', 'hades_core:chondrite'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_chondrite_stone2 4',
	recipe = {
		{'default:stone', 'hades_core:chondrite'},
		{'hades_core:chondrite', 'default:stone'},
	}
})

--
-- Tuffs
--

minetest.register_craft({
	output = 'hades_core:tuff_block',
	recipe = {
		{'hades_core:tuff', 'hades_core:tuff', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff', 'hades_core:tuff'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff 9',
	recipe = {
		{'hades_core:tuff_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_baked_block',
	recipe = {
		{'hades_core:tuff_baked', 'hades_core:tuff_baked', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff_baked', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff_baked', 'hades_core:tuff_baked'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_baked 9',
	recipe = {
		{'hades_core:tuff_baked_block'}
	}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:ash",
	recipe = "hades_core:tuff_baked",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:tuff_baked",
	recipe = "hades_core:tuff",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "hades_core:tuff",
	recipe = "hades_core:mossytuff",
})


minetest.register_craft({
	output = 'hades_core:tuff_brick 4',
	recipe = {
		{'hades_core:tuff', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff'},
	}
})

minetest.register_craft({
	output = 'hades_core:tuff_baked_brick 4',
	recipe = {
		{'hades_core:tuff_baked', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff_baked'},
	}
})

minetest.register_craft({
	output = 'hades_core:floor_btuff_tuff 4',
	recipe = {
		{'hades_core:tuff_baked', 'hades_core:tuff'},
		{'hades_core:tuff', 'hades_core:tuff_baked'},
	}
})
minetest.register_craft({
	output = 'hades_core:floor_btuff_tuff 4',
	recipe = {
		{'hades_core:tuff', 'hades_core:tuff_baked'},
		{'hades_core:tuff_baked', 'hades_core:tuff'},
	}
})

--
-- Essexite
--

minetest.register_craft({
	output = 'hades_core:essexite_block',
	recipe = {
		{'hades_core:essexite', 'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite', 'hades_core:essexite'},
	}
})

minetest.register_craft({
	output = 'hades_core:essexite 9',
	recipe = {
		{'hades_core:essexite_block'}
	}
})

minetest.register_craft({
	output = 'hades_core:essexite_brick 4',
	recipe = {
		{'hades_core:essexite', 'hades_core:essexite'},
		{'hades_core:essexite', 'hades_core:essexite'},
	}
})

--
-- Ash
--

minetest.register_craft({
	output = 'hades_core:ash_block',
	recipe = {
		{'hades_core:ash', 'hades_core:ash', 'hades_core:ash'},
		{'hades_core:ash', 'hades_core:ash', 'hades_core:ash'},
		{'hades_core:ash', 'hades_core:ash', 'hades_core:ash'},
	}
})

minetest.register_craft({
	output = 'hades_core:ash 9',
	recipe = {
		{'hades_core:ash_block'}
	}
})

--
-- Fertile sand
--

minetest.register_craft({
    type = "shapeless",
	output = 'hades_core:fertile_sand 2',
	recipe = {'hades_core:tuff', 'hades_core:ash'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'hades_core:fertile_sand 2',
	recipe = {'hades_core:mossytuff', 'hades_core:ash'},
})