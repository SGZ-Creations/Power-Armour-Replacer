if mods["SpaceMod"]	and mods["bobmodules"] then
	data:extend({
		{
			type = "technology",
			name = "protection-fields",
			icon_size =	128, icon_mipmaps =	4,
			icon = "__SpaceMod__/graphics/technology/protection-fields.png",
			effects	=
			{
				{
					type = "unlock-recipe",
					recipe = "protection-field-goopless"
				},
				{
					type = "unlock-recipe",
					recipe = "protection-field"
				}
			},
			prerequisites =
			{
			"shield_6",
			"space-construction",
			},
			unit = {
				ingredients	=
					{
						{"automation-science-pack",	1},
						{"logistic-science-pack", 1},
						{"chemical-science-pack", 1},
						{"production-science-pack",	1},
						{"utility-science-pack", 1}
					},
				time = 60,
				count =	30000
			},
			order =	"lib"
		},
		{
			type = "technology",
			name = "fusion-reactor",
			icon_size = 128, icon_mipmaps = 4,
			icon = "__SpaceMod__/graphics/technology/fusion-reactor.png",
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "fusion-reactor"
				}
			},
			prerequisites =
			{
				"fusion-reactor_4",
				"space-construction",
			},
			unit =
			{
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"production-science-pack", 1},
					{"utility-science-pack", 1}
				},
				time = 60,
				count = 30000
			},
			order = "d-e-g"
		},
	})
elseif mods["SpaceMod"]	then
	data:extend({
		{
			type = "technology",
			name = "protection-fields",
			icon_size =	128, icon_mipmaps =	4,
			icon = "__SpaceMod__/graphics/technology/protection-fields.png",
			effects	=
			{
				{
					type = "unlock-recipe",
					recipe = "protection-field"
				}
			},
			prerequisites =
			{
			"shield_6",
			"space-construction",
			},
			unit =
				{
				ingredients	=
					{
						{"automation-science-pack",	1},
						{"logistic-science-pack", 1},
						{"chemical-science-pack", 1},
						{"production-science-pack",	1},
						{"utility-science-pack", 1}
					},
				time = 60,
				count =	30000
				},
			order =	"lib"
		},
		{
			type = "technology",
			name = "fusion-reactor",
			icon_size = 128, icon_mipmaps = 4,
			icon = "__SpaceMod__/graphics/technology/fusion-reactor.png",
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "fusion-reactor"
				}
			},
			prerequisites =
			{
				"fusion-reactor_4",
				"space-construction",
			},
			unit =
			{
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"production-science-pack", 1},
					{"utility-science-pack", 1}
				},
				time = 60,
				count = 30000
			},
			order = "d-e-g"
		},
	})
end

--[[
if mods["boblibrary"] and mods["SpaceMod"] then 
	bobmods.lib.tech.add_prerequisite("protection-fields", "shield_5")
	bobmods.lib.tech.add_prerequisite("fusion-reactor", "fusion-reactor_4")
end

if mods["boblibrary"] and mods["SpaceMod"] then 
	for tech_name, _ in pairs(data.raw.technology) do
		if bobmods.lib.tech.has_prerequisite(tech_name, "old-tech-name") then
			bobmods.lib.tech.replace_prerequisite(tech_name, "old-tech-name", "new-tech-name")
		end
	end
end
]]
--[[
if mods["boblibrary"] and mods["SpaceMod"] then 
	for tech_name, _ in pairs(data.raw.technology) do
		if bobmods.lib.tech.has_prerequisite(tech_name, "old-tech-name") then
			bobmods.lib.tech.replace_prerequisite(tech_name, "old-tech-name", "new-tech-name")
		end
	end
end
]]