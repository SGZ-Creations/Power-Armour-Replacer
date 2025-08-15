---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class data.ArmorPrototype
local Armour = data.raw["armor"]

if mods["Power Armor MK3"] then
    Recipe["pamk3-lvest"].ingredients = {
        {type="item", name="light-armor", amount= 1},
        {type="item", name="copper-plate", amount= 2}
    }
    Recipe["heavy-armor"].ingredients = {
        {type="item", name="pamk3-lvest", amount= 1},
        {type="item", name="steel-plate", amount= 10},
        {type="item", name="copper-plate", amount= 10}
    }
    Recipe["pamk3-hvest"].ingredients = {
        {type="item", name="heavy-armor", amount= 1},
        {type="item", name="steel-plate", amount= 10},
        {type="item", name="copper-plate", amount= 10}
    }
end

if mods["RampantArsenalFork"] and mods["space-age"] then
    Recipe["combat-mech-armor-rampant-arsenal"].ingredients = {
        {type="item", name="mech-armor", amount= 1},
        {type="item", name="par-armour-mk7", amount= 1},
    }
end

if mods["space-age"] then
    Armour["mech-armor"].resistances = {
        {
            type = "physical",
            decrease = 950,
            percent = 90,
        },
        {
            type = "acid",
            decrease = 90,
            percent = 8.
        },
        {
            type = "explosion",
            decrease = 10,
            percent = 10,
        },
        {
            type = "fire",
            decrease = 0,
            percent = 100
        },
        {
            type = "electric",
            decrease = 0,
            percent = 250,
        },
        {
            type = "impact",
            decrease = 0,
            percent = 100,
        },
        {
            type = "laser",
            decrease = 0,
            percent = 100,
        },
        {
            type = "poison",
            decrease = 50,
            percent = -200,
        },
    }
end
if mods["RampantArsenalFork"] and mods["space-age"] then
    Armour["combat-mech-armor-rampant-arsenal"].resistances = {
        {
            type = "physical",
            decrease = 1000,
            percent = 95,
        },
        {
            type = "acid",
            decrease = 100,
            percent = 10.
        },
        {
            type = "explosion",
            decrease = 20,
            percent = 20,
        },
        {
            type = "fire",
            decrease = 0,
            percent = 100
        },
        {
            type = "electric",
            decrease = 0,
            percent = 500,
        },
        {
            type = "impact",
            decrease = 0,
            percent = 100,
        },
        {
            type = "laser",
            decrease = 0,
            percent = 100,
        },
        {
            type = "poison",
            decrease = 100,
            percent = -100,
        },
    }
end


--Alterenative to fix how armour is added to a recipe.
--[[
if not data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1} then
	table.insert(data.raw.recipe["heavy-armor"].ingredients, {type="item", name="light-armor", amount=1})
elseif data.raw.recipe["heavy-armor"].ingredients == {type="item", name="light-armor", amount=1} then return end
]]