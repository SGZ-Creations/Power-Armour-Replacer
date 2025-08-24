---@class data.RecipePtototype
local Recipe = data.raw.recipe
---@class data.ArmorPrototype
local Armour = data.raw.armor

--https://github.com/modded-factorio/bobsmods/blob/main/boblibrary/recipe-functions.lua
--https://github.com/modded-factorio/bobsmods/blob/main/bobelectronics/data-updates.lua

--if mods["quality"] then
	--[[
	PAR.recycle_updates({
	Recipe["par-armour-mk1"].auto_recycle = false	--Recipe["par-armour-mk1"].auto_recycle.result = Recipe["par-armour-mk1"]
	Recipe["par-armour-mk2"].auto_recycle = false	--Recipe["par-armour-mk2"].auto_recycle = Recipe["par-armour-mk2"]
	Recipe["par-armour-mk3"].auto_recycle = false	--Recipe["par-armour-mk3"].auto_recycle = nil
	Recipe["par-armour-mk4"].auto_recycle = false	--Recipe["par-armour-mk4"].auto_recycle = nil
	Recipe["par-armour-mk5"].auto_recycle = false	--Recipe["par-armour-mk5"].auto_recycle = nil
	Recipe["par-armour-mk6"].auto_recycle = false	--Recipe["par-armour-mk6"].auto_recycle = nil
	Recipe["par-armour-mk7"].auto_recycle = false	--Recipe["par-armour-mk7"].auto_recycle = nil
	Recipe["par-armour-mk8"].auto_recycle = false	--Recipe["par-armour-mk8"].auto_recycle = nil
	Recipe["par-armour-mk9"].auto_recycle = false	--Recipe["par-armour-mk9"].auto_recycle = nil
	Recipe["par-armour-mk10"].auto_recycle = false	--Recipe["par-armour-mk10"].auto_recycle = nil
	
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false

	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false

	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false

	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false

	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false

	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false

	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false
	Recipe[""].auto_recycle = false	
	})
end
]]