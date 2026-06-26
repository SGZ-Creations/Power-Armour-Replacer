---@class data.RecipePrototype
local Recipe = data.raw.recipe

Recipe["light-armor"].ingredients = {
    {type="item", name="iron-plate", amount= 25},
    {type="item", name="copper-plate", amount= 25},
}

if mods["Power Armor MK3"] then
    Recipe["pamk3-lvest"].ingredients = {
        {type="item", name="light-armor", amount= 1},
        {type="item", name="copper-plate", amount= 25},
    }
    Recipe["heavy-armor"].ingredients = {
        {type="item", name="pamk3-lvest", amount= 1},
        {type="item", name="steel-plate", amount= 35},
        {type="item", name="copper-plate", amount= 35},
    }
    Recipe["pamk3-hvest"].ingredients = {
        {type="item", name="heavy-armor", amount= 1},
        {type="item", name="steel-plate", amount= 35},
        {type="item", name="copper-plate", amount= 35},
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

if mods["RampantArsenalFork"] and mods["space-age"]then
    Recipe["combat-mech-armor-rampant-arsenal"].categories = "par-electronics"
end
if mods["metal-and-stars"]then
    Recipe["prototype-mech-armor"].categories = "par-electronic-hands"
end