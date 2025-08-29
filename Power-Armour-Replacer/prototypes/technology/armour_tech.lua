data:extend({

--[[-@type data.TechnologyPrototype
	local tech = simpletech {
		{icon = "__base__/graphics/technology/power-armor.png", icon_size = 256,}, --1
		{icon = "__base__/graphics/technology/power-armor-mk2.png", icon_size = 256,}, --2
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-3", icon_size = 256,}, --3
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-4", icon_size = 256,}, --4
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5", icon_size = 256,}, --5
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5", icon_size = 256,}, --6
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5", icon_size = 256,}, --7
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5", icon_size = 256,}, --8
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5", icon_size = 256,}, --9
		{icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5", icon_size = 256,}, --10
	}
	local technology = { ]]
	{
		type = "technology",
		name = "par-armour-tech-1",
		icon_size = 256, --simpletech.icon_size,
		icon = "__base__/graphics/technology/power-armor.png", --simpletech.icon,
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk1"
			},
		},
		prerequisites = { "heavy-armor", "automation", "lamp"},
		research_trigger = {type ="craft-item", item ="heavy-armor", count = 1},
		order = "Armour01"
	},
	{
		type = "technology",
		name = "par-armour-tech-2",
		icon_size = 256,
		icon = "__base__/graphics/technology/power-armor-mk2.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk2"
			},
		},
		prerequisites = { "par-armour-tech-1", "electronics" },
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 1 }
			},
			time = 15
		},
		order = "Armour02"
	},
	{
		type = "technology",
		name = "par-armour-tech-3",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-3.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk3"
			},
		},
		prerequisites = { "par-armour-tech-2", "advanced-circuit", "plastics", "engine", "military-2", },
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 2 },
				{ "logistic-science-pack",   1 }
			},
			time = 15
		},
		order = "Armour03"
	},
	{
		type = "technology",
		name = "par-armour-tech-4",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-4.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk4"
			},
		},
		prerequisites = { "par-armour-tech-3", "military-science-pack" },
		unit =
		{
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 3 },
				{ "logistic-science-pack",   2 },
				{ "military-science-pack",   1 }
			},
			time = 15
		},
		order = "Armour04"
	},
	{
		type = "technology",
		name = "par-armour-tech-5",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk5"
			},
		},
		prerequisites = {
			"par-armour-tech-4",
			"electric-engine",
			"military-3",
			"armour-control-unit",
		},
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 4 },
				{ "logistic-science-pack",   3 },
				{ "military-science-pack",   2 },
				{ "chemical-science-pack",   1 },
			},
			time = 15
		},
		order = "Armour05"
	},
	{
		type = "technology",
		name = "par-armour-tech-6",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-6_0.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk6"
			},
		},
		prerequisites = {
			"par-armour-tech-5",
			"processing-unit",
		},
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 5 },
				{ "logistic-science-pack",   4 },
				{ "military-science-pack",   3 },
				{ "chemical-science-pack",   2 },
			},
			time = 15
		},
		order = "Armour06"
	},
	{
		type = "technology",
		name = "par-armour-tech-7",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk7"
			},
		},
		prerequisites = {
			"par-armour-tech-6",
			"production-science-pack",
			"low-density-structure",
			"nuclear-power",
		},
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 6 },
				{ "logistic-science-pack",   5 },
				{ "military-science-pack",   4 },
				{ "chemical-science-pack",   3 },
				{ "production-science-pack", 1 },
			},
			time = 15
		},
		order = "Armour07"
	},
	{
		type = "technology",
		name = "par-armour-tech-8",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk8"
			},
		},
		prerequisites = {
			"par-armour-tech-7",
			"production-science-pack",
			"kovarex-enrichment-process"
		},
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 7 },
				{ "logistic-science-pack",   6 },
				{ "military-science-pack",   5 },
				{ "chemical-science-pack",   4 },
				{ "production-science-pack", 2 },
			},
			time = 15
		},
		order = "Armour08"
	},
	{
		type = "technology",
		name = "par-armour-tech-9",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk9"
			},
		},
		prerequisites = { "par-armour-tech-8", "military-4", },
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 8 },
				{ "logistic-science-pack",   7 },
				{ "military-science-pack",   6 },
				{ "chemical-science-pack",   5 },
				{ "production-science-pack", 3 },
				{ "utility-science-pack",    1 },
			},
			time = 15
		},
		order = "Armour09"
	},
	{
		type = "technology",
		name = "par-armour-tech-10",
		icon_size = 256,
		icon = "__Power-Armour-Replacer__/graphics/technology/armour/tech-power-armour-5.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "par-armour-mk10"
			},
		},
		prerequisites = { "par-armour-tech-9" },
		unit = {
			count = 1000,
			ingredients = {
				{ "automation-science-pack", 9 },
				{ "logistic-science-pack",   8 },
				{ "military-science-pack",   7 },
				{ "chemical-science-pack",   6 },
				{ "production-science-pack", 4 },
				{ "utility-science-pack",    2 },
			},
			time = 15
		},
		order = "Armour10"
	},
})
