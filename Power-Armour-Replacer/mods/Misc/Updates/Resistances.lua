---@class data.ArmorPrototype
local Armour = data.raw["armor"]

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
