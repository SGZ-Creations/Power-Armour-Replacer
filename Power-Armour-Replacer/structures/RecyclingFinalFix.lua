local PAR = require("mods.util")

if mods["quality"] then
    PAR.update_rec_recipe_results({
    --Armour
        "par-armour-mk1",
        "par-armour-mk2",
        "par-armour-mk3",
        "par-armour-mk4",
        "par-armour-mk5",
        "par-armour-mk6",
        "par-armour-mk7",
        "par-armour-mk8",
        "par-armour-mk9",
        "par-armour-mk10",

        --Batteries
        "par-battery-mk1",
        "par-battery-mk2",
        "par-battery-mk3",
        "par-battery-mk4",
        "par-battery-mk5",
        "par-battery-mk6",
        "par-battery-mk7",
        "par-battery-mk8",
        "par-battery-mk9",
        "par-battery-mk10",

        --fission
        "par-fission-reactor-mk1",
        "par-fission-reactor-mk2",
        "par-fission-reactor-mk3",
        "par-fission-reactor-mk4",
        "par-fission-reactor-mk5",
        "par-fission-reactor-mk6",
        "par-fission-reactor-mk7",
        "par-fission-reactor-mk8",
        "par-fission-reactor-mk9",
        "par-fission-reactor-mk10",

        --laser
        "par-laser-mk1",
        "par-laser-mk2",
        "par-laser-mk3",
        "par-laser-mk4",
        "par-laser-mk5",
        "par-laser-mk6",
        "par-laser-mk7",
        "par-laser-mk8",
        "par-laser-mk9",
        "par-laser-mk10",

        --Roboport
        "par-roboport-mk1",
        "par-roboport-mk2",
        "par-roboport-mk3",
        "par-roboport-mk4",
        "par-roboport-mk5",
        "par-roboport-mk6",
        "par-roboport-mk7",
        "par-roboport-mk8",
        "par-roboport-mk9",
        "par-roboport-mk10",

        --shield
        "par-shield-mk1",
        "par-shield-mk2",
        "par-shield-mk3",
        "par-shield-mk4",
        "par-shield-mk5",
        "par-shield-mk6",
        "par-shield-mk7",
        "par-shield-mk8",
        "par-shield-mk9",
        "par-shield-mk10",

        --solar
        "par-solar-panel-mk1",
        "par-solar-panel-mk2",
        "par-solar-panel-mk3",
        "par-solar-panel-mk4",
        "par-solar-panel-mk5",
        "par-solar-panel-mk6",
        "par-solar-panel-mk7",
        "par-solar-panel-mk8",
        "par-solar-panel-mk9",
        "par-solar-panel-mk10",

        --Exoskeleton 
        "par-exoskeleton-mk1",
        "par-exoskeleton-mk2",
        "par-exoskeleton-mk3",
        "par-exoskeleton-mk4",
        "par-exoskeleton-mk5",

        --immunity
        "par-belt-immunity-mk1",
        "par-belt-immunity-mk2",

        --NVG's
        "par-nightvision-mk1",
        "par-nightvision-mk2",
    })
    if mods["Power Armor MK3"] then
        PAR.update_rec_recipe_results({
            "pamk3-lvest",
            "heavy-armor",
            "pamk3-hvest",
        })
    end
    if mods["RampantArsenalFork"] and mods["space-age"] then
        PAR.update_rec_recipe_results({
            "combat-mech-armor-rampant-arsenal",
        })
    end
    if (mods["mech-armor"] or mods["space-age"]) then
        PAR.update_rec_recipe_results({
            "mech-armor",
        })
    end
end