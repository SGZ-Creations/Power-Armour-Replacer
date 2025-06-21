---@class data.TechnologyPrototype.type
local Tech = data.raw["technology"]
---@class data.RecipePrototype
local Recipe =data.raw["recipe"]
---@class data.SettingsStartup
local SS = settings.startup


if mods["bobtech"]and mods["bobplates"] then
	Tech["steel-processing"].research_trigger = {type ="craft-fluid", fluid ="bob-oxygen", amount = 1000}

	Tech["bob-electrolysis-1"].research_trigger = {type ="craft-item", item ="boiler", count = 12}
	Tech["bob-electrolysis-1"].unit = nil

	Tech["bob-chemical-processing-1"].research_trigger = {type ="craft-item", item ="steam-engine", count = 24}
	Tech["bob-chemical-processing-1"].unit = nil

	if mods["bobelectronics"]then
		Tech["lamp"].research_trigger = {type ="craft-item", item ="bob-basic-circuit-board", count = 50}
		Tech["lamp"].unit = nil
	end
end

if mods["bobtech"] then
	if SS["bobmods-burnerphase"].value == true then
		if mods["bobplates"]then
			Tech["bob-alloy-processing"].research_trigger = {type ="craft-item", item ="bob-tin-plate", count = 50}
			Tech["bob-alloy-processing"].unit = nil

			Tech["logistics"].research_trigger = {type ="craft-item", item ="inserter", count = 20}
			Tech["logistics"].unit = nil

			Tech["bob-lab"].research_trigger = {type ="craft-item", item ="transport-belt", count = 20}
			Tech["bob-lab"].unit = nil

			Tech["logistic-science-pack"].research_trigger = {type ="craft-item", item ="lab", count = 10}
			Tech["logistic-science-pack"].unit = nil

			if mods["bobelectronics"]then
				Tech["electronics"].research_trigger = {type ="craft-item", item ="small-electric-pole", count = 10}
				Tech["electronics"].unit = nil

				if mods["bobplates"] then
					Recipe["bob-carbon-from-wood"].enabled = true
				end

				if not mods["Alt_Chemical_Processing"] then
					Tech["bob-chemical-processing-1"].research_trigger = {type ="craft-item", item ="bob-carbon", count = 25}
					Tech["bob-chemical-processing-1"].unit = nil
				elseif mods["Alt_Chemical_Processing"] then
					Tech["bob-chemical-processing-1"].research_trigger = {type ="craft-item", item ="carbon", count = 25}
					Tech["bob-chemical-processing-1"].unit = nil
				end
			end
		end
	end
end

if mods["bobtech"] and mods["boblogistics"] then
	table.insert(Tech["par-roboport-tech-5"].unit.ingredients, {"bob-advanced-logistic-science-pack", 1})

	table.insert(Tech["par-roboport-tech-6"].unit.ingredients, {"bob-advanced-logistic-science-pack", 2})

	table.insert(Tech["par-roboport-tech-7"].unit.ingredients, {"bob-advanced-logistic-science-pack", 3})

	table.insert(Tech["par-roboport-tech-8"].unit.ingredients, {"bob-advanced-logistic-science-pack", 4})

	table.insert(Tech["par-roboport-tech-9"].unit.ingredients, {"bob-advanced-logistic-science-pack", 5})

	table.insert(Tech["par-roboport-tech-10"].unit.ingredients, {"bob-advanced-logistic-science-pack", 6})
end

if not mods["boblibrary"] then
    table.insert(Tech["par-armour-tech-1"].effects,{type="unlock-recipe",recipe="iron-stick"})
end