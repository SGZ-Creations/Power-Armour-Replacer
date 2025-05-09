---@class data.TechnologyPrototype.type
local Tech = data.raw["technology"]

if mods["bobtech"]and mods["bobplates"] then
	Tech["steel-processing"].research_trigger = {type ="craft-fluid", fluid ="bob-oxygen", amount = 1000}
	--Tech["steel-processing"].unit = nil

	data.raw.technology["bob-electrolysis-1"].research_trigger = {type ="craft-item", item ="boiler", count = 12}
	data.raw.technology["bob-electrolysis-1"].unit = nil

	data.raw.technology["bob-chemical-processing-1"].research_trigger = {type ="craft-item", item ="steam-engine", count = 24}
	data.raw.technology["bob-chemical-processing-1"].unit = nil
end

if mods["bobtech"] then
	if settings.startup["bobmods-burnerphase"].value == true then
		if mods["bobplates"]then
			data.raw.technology["bob-alloy-processing"].research_trigger = {type ="craft-item", item ="bob-tin-plate", count = 50}
			data.raw.technology["bob-alloy-processing"].unit = nil

			data.raw.technology["logistics"].research_trigger = {type ="craft-item", item ="inserter", count = 20}
			data.raw.technology["logistics"].unit = nil

			data.raw.technology["bob-lab"].research_trigger = {type ="craft-item", item ="transport-belt", count = 20}
			data.raw.technology["bob-lab"].unit = nil

			data.raw.technology["logistic-science-pack"].research_trigger = {type ="craft-item", item ="lab", count = 10}
			data.raw.technology["logistic-science-pack"].unit = nil

			if mods["bobelectronics"]then
				data.raw.technology["electronics"].research_trigger = {type ="craft-item", item ="small-electric-pole", count = 10}
				data.raw.technology["electronics"].unit = nil

				data.raw.technology["bob-electrolysis-1"].research_trigger = {type ="craft-item", item ="bob-basic-circuit-board", count = 50}
				data.raw.technology["bob-electrolysis-1"].unit = nil

				data.raw.technology["bob-chemical-processing-1"].research_trigger = {type ="craft-item", item ="bob-carbon", count = 25}
				data.raw.technology["bob-chemical-processing-1"].unit = nil
			end
		end
	end
end

if mods["bobtech"] and mods["boblogistics"] then
	table.insert(data.raw.technology["par-roboport-tech-5"].unit.ingredients, {"bob-advanced-logistic-science-pack", 1})

	table.insert(data.raw.technology["par-roboport-tech-6"].unit.ingredients, {"bob-advanced-logistic-science-pack", 2})

	table.insert(data.raw.technology["par-roboport-tech-7"].unit.ingredients, {"bob-advanced-logistic-science-pack", 3})

	table.insert(data.raw.technology["par-roboport-tech-8"].unit.ingredients, {"bob-advanced-logistic-science-pack", 4})

	table.insert(data.raw.technology["par-roboport-tech-9"].unit.ingredients, {"bob-advanced-logistic-science-pack", 5})

	table.insert(data.raw.technology["par-roboport-tech-10"].unit.ingredients, {"bob-advanced-logistic-science-pack", 6})
end

if not mods["boblibrary"] then
    local tech_eff = data.raw.technology["par-armour-tech-1"].effects
    table.insert(tech_eff,{type="unlock-recipe",recipe="iron-stick"})
end