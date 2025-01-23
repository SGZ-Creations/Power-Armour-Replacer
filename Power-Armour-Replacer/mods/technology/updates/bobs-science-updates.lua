---@class data.TechnologyPrototype.type

if mods["bobtech"]and mods["bobplates"] then
	data.raw.technology["heavy-armor"].research_trigger = {type ="craft-item", item ="light-armor", count = 1}
	data.raw.technology["heavy-armor"].unit = nil

	data.raw.technology["steel-processing"].research_trigger = {type ="craft-fluid", fluid ="bob-oxygen", amount = 1000}
	data.raw.technology["steel-processing"].unit = nil

	data.raw.technology["bob-electrolysis-1"].research_trigger = {type ="craft-item", item ="automation-science-pack", count = 100}
	data.raw.technology["bob-electrolysis-1"].unit = nil

	data.raw.technology["bob-chemical-processing-1"].research_trigger = {type ="craft-item", item ="automation-science-pack", count = 100}
	data.raw.technology["bob-chemical-processing-1"].unit = nil
end

if mods["bobtech"] and mods["bobslogistics"] then
	table.insert(data.raw.technology["par-roboport-tech-5"].unit.ingredients, {"advanced-logistic-science-pack", 1})

	table.insert(data.raw.technology["par-roboport-tech-6"].unit.ingredients, {"advanced-logistic-science-pack", 2})

	table.insert(data.raw.technology["par-roboport-tech-7"].unit.ingredients, {"advanced-logistic-science-pack", 3})

	table.insert(data.raw.technology["par-roboport-tech-8"].unit.ingredients, {"advanced-logistic-science-pack", 4})

	table.insert(data.raw.technology["par-roboport-tech-9"].unit.ingredients, {"advanced-logistic-science-pack", 5})

	table.insert(data.raw.technology["par-roboport-tech-10"].unit.ingredients, {"advanced-logistic-science-pack", 6})
end