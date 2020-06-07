minetest.register_abm({
	label = "Create clay",
	nodenames = {"hades_core:ash"},
	neighbors = {"group:water"},
	interval = 700,
	chance = 75,
	action = function(pos, node)
        minetest.set_node(pos, {name="hades_core:clay"})				
	end,
})

minetest.register_abm({
	label = "Create dirt (direct neighboring water)",
	nodenames = {"hades_core:fertile_sand"},
	neighbors = {"group:water"},
	interval = 25,
	chance = 5,
	action = function(pos, node)
		minetest.set_node(pos, {name="hades_core:dirt"})
	end,
})

minetest.register_abm({
	label = "Create dirt (extended water check)",
	nodenames = {"hades_core:fertile_sand"},
	neighbors = {"hades_core:dirt", "hades_core:dirt_with_grass"},
	interval = 50,
	chance = 5,
	action = function(pos, node)
		if minetest.find_node_near(pos, 10, {"group:water"}) == nil then
			return
		else
		    minetest.set_node(pos, {name="hades_core:dirt"})
		end
	end,
})
