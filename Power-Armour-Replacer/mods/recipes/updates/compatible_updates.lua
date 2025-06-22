---@class data.RecipePrototype
local Recipe = data.raw.recipe

if mods["Power Armor MK3"] then
    Recipe["pamk3-lvest"].ingredients = {
        {type="item", name="light-armor", amount= 1},
        {type="item", name="copper-plate", amount= 10}
    }
    Recipe["heavy-armor"].ingredients = {
        {type="item", name="pamk3-lvest", amount= 1},
        {type="item", name="steel-plate", amount= 25},
        {type="item", name="copper-plate", amount= 20}
    }
    Recipe["pamk3-hvest"].ingredients = {
        {type="item", name="heavy-armor", amount= 1},
        {type="item", name="steel-plate", amount= 50},
        {type="item", name="copper-plate", amount= 40}
    }
end
--Alterenative to fix how armour is added to a recipe.
--[[
if not data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1} then
	table.insert(data.raw.recipe["heavy-armor"].ingredients, {type="item", name="light-armor", amount=1})
elseif data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1} then return end
]]