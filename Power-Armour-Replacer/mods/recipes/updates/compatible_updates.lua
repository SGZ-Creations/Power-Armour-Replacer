---@class data.RecipePrototype
local Recipe = data.raw.recipe

if mods["Power Armor MK3"] then
    Recipe["pamk3-lvest"].ingredients = {
        {type="item", name="light-armor", amount= 1},
        {type="item", name="copper-plate", amount= 5},
    }
    Recipe["heavy-armor"].ingredients = {
        {type="item", name="pamk3-lvest", amount= 1},
        {type="item", name="steel-plate", amount= 10},
        {type="item", name="copper-plate", amount= 10},
    }
    Recipe["pamk3-hvest"].ingredients = {
        {type="item", name="heavy-armor", amount= 1},
        {type="item", name="steel-plate", amount= 10},
        {type="item", name="copper-plate", amount= 10},
    }
end

if mods["RampantArsenalFork"] and mods["space-age"] then
    Recipe["combat-mech-armor-rampant-arsenal"].ingredients = {
        {type="item", name="mech-armor", amount= 1},
        {type="item", name="par-armour-mk7", amount= 1},
    }
end

if mods["RampantArsenalFork"] and mods["mech-armor"] then
    Recipe["combat-mech-armor-rampant-arsenal"].ingredients = {
        {type="item", name="mech-armor", amount= 1},
        {type="item", name="par-armour-mk7", amount= 1},
    }
end

--Alterenative to fix how armour is added to a recipe.
--[[
if not data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1} then
	table.insert(data.raw.recipe["heavy-armor"].ingredients, {type="item", name="light-armor", amount=1})
elseif data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1} then return end
]]