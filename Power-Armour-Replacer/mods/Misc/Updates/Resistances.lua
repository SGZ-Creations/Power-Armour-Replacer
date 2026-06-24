---@class data.ArmorPrototype
local Armour = data.raw["armor"]

--1st tier of armour progression
if mods["metal-and-stars"] then
    Armour["prototype-mech-armor"].resistances = {
        {
            type = "physical",
            decrease = 400,
            percent = 50,
        },
        {
            type = "acid",
            decrease = 100,
            percent = 0,
        },
        {
            type = "explosion",
            decrease = 1000,
            percent = 45,
        },
        {
            type = "fire",
            decrease = 0,
            percent = 100,
        },
        {
            type = "electric",
            decrease = 0,
            percent = 150,
        },
        {
            type = "impact",
            decrease = 0,
            percent = 85,
        },
        {
            type = "laser",
            decrease = 0,
            percent = 85,
        },
        {
            type = "poison",
            decrease = 25,
            percent = -300,
        },
    }
end
--2nd tier of mech armour progression
if mods["space-age"] then
    Armour["mech-armor"].resistances = {
        {
            type = "physical",
            decrease = 950,
            percent = 90,
        },
        {
            type = "acid",
            decrease = 200,
            percent = 5,
        },
        {
            type = "explosion",
            decrease = 1000,
            percent = 65,
        },
        {
            type = "fire",
            decrease = 0,
            percent = 100,
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
--3rd tier of mech armour progression
if mods["RampantArsenalFork"] and mods["space-age"] then
    Armour["combat-mech-armor-rampant-arsenal"].resistances = {
        {
            type = "physical",
            decrease = 1000,
            percent = 95,
        },
        {
            type = "acid",
            decrease = 300,
            percent = 10.
        },
        {
            type = "explosion",
            decrease = 1500,
            percent = 85,
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
