---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
---@class data.SettingsStartup
local SS = settings.startup



if mods["angelssmelting"]and mods["angelspetrochem"]and mods["angelsrefining"] then
	Tech["steel-processing"].research_trigger = {type ="craft-item", item ="steel-plate", count = 100}

	Tech["angels-steel-smelting-1"].research_trigger = {type ="craft-fluid", fluid ="angels-gas-oxygen", amount = 1000}
	Tech["angels-steel-smelting-1"].unit = nil

	Tech["angels-basic-chemistry"].research_trigger = {type ="craft-item", item ="assembling-machine-1", count = 10}
	Tech["angels-basic-chemistry"].unit = nil

	Tech["angels-ore-crushing"].research_trigger = {type ="craft-item", item ="angels-electrolyser", count = 10}
	Tech["angels-ore-crushing"].unit = nil

	Tech["angels-coal-processing"].research_trigger = {type ="craft-item", item ="angels-liquifier", count = 10}
	Tech["angels-coal-processing"].unit = nil

	Tech["angels-metallurgy-1"].research_trigger = {type ="craft-item", item ="angels-ore-sorting-facility", count = 10}
	Tech["angels-metallurgy-1"].unit = nil

	Tech["angels-iron-smelting-1"].research_trigger = {type ="craft-item", item ="angels-blast-furnace", count = 10}
	Tech["angels-iron-smelting-1"].unit = nil

	Tech["angels-lead-smelting-1"].research_trigger = {type ="craft-item", item ="angels-casting-machine", count = 10}
	Tech["angels-lead-smelting-1"].unit = nil

	Tech["angels-tin-smelting-1"].research_trigger = {type ="craft-item", item ="angels-induction-furnace", count = 10}
	Tech["angels-tin-smelting-1"].unit = nil

	Tech["angels-solder-smelting-1"].research_trigger = {type ="craft-item", item ="angels-induction-furnace", count = 10}
	Tech["angels-solder-smelting-1"].unit = nil
end