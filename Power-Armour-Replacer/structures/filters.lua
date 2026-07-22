local Recipes = data.raw.recipe
local Tech = data.raw.technology
local Item = data.raw.item
local Armour = data.raw.armor
local SS = settings.startup

--[[
    Clean up phase of all mods adding technology Recipes for Armour's & Equipment's.
    making the game less confusing on what to craft and hopefully not have 2-4 recipes.
    From different mods giving u multiple "MK3 armours" in game.

    At some point should u have, 2-4 mods giving u armours this mod will hopefully do a clean up & convert your previous Armour, Equipment to one version. 
    Which i want to let u modify to your likings in the end. If it ends up being to OP u can adjust it all.

    Only exception with this mod is that i won't be duping anything regarding bob's vehicle Equipment as it has nothing to do with this.
]]

local function Hide_Item(name)
    local item = Item[name]
    if item then
        item.hidden = true
    end

    local armour_item = Armour[name]
    if armour_item then
        armour_item.hidden = true
    end
    if not (item or armour_item) then
        log("Could not find "..name)
    end
end

--Enabled
    Tech["modular-armor"].enabled = false
    Tech["power-armor"].enabled = false
    Tech["power-armor-mk2"].enabled = false
--Hidden
    Recipes["modular-armor"].hidden = true
    Recipes["power-armor"].hidden = true
    Recipes["power-armor-mk2"].hidden = true

    Tech["modular-armor"].hidden = true
    Tech["power-armor"].hidden = true
    Tech["power-armor-mk2"].hidden = true

--Enabled
    Tech["energy-shield-equipment"].enabled = false
    Tech["energy-shield-mk2-equipment"].enabled = false
    Tech["fission-reactor-equipment"].enabled = false
    Tech["night-vision-equipment"].enabled = false
    Tech["battery-equipment"].enabled = false
    Tech["battery-mk2-equipment"].enabled = false
    Tech["belt-immunity-equipment"].enabled = false
    Tech["exoskeleton-equipment"].enabled = false
    Tech["personal-laser-defense-equipment"].enabled = false
    Tech["personal-roboport-equipment"].enabled = false
    Tech["personal-roboport-mk2-equipment"].enabled = false
    Tech["solar-panel-equipment"].enabled = false
    Tech["discharge-defense-equipment"].enabled = false

    Recipes["power-armor"].enabled = false
    Recipes["modular-armor"].enabled = false
    Recipes["power-armor-mk2"].enabled = false
    Recipes["battery-equipment"].enabled = false
    Recipes["exoskeleton-equipment"].enabled = false
    Recipes["battery-mk2-equipment"].enabled = false
    Recipes["solar-panel-equipment"].enabled = false
    Recipes["night-vision-equipment"].enabled = false
    Recipes["belt-immunity-equipment"].enabled = false
    Recipes["energy-shield-equipment"].enabled = false
    Recipes["fission-reactor-equipment"].enabled = false
    Recipes["personal-roboport-equipment"].enabled = false
    Recipes["energy-shield-mk2-equipment"].enabled = false
    Recipes["discharge-defense-equipment"].enabled = false
    Recipes["personal-roboport-mk2-equipment"].enabled = false
    Recipes["personal-laser-defense-equipment"].enabled = false

--Hidden
    Tech["fission-reactor-equipment"].hidden = true
    Tech["energy-shield-equipment"].hidden = true
    Tech["night-vision-equipment"].hidden = true
    Tech["energy-shield-mk2-equipment"].hidden = true
    Tech["exoskeleton-equipment"].hidden = true
    Tech["belt-immunity-equipment"].hidden = true
    Tech["battery-equipment"].hidden = true
    Tech["battery-mk2-equipment"].hidden = true
    Tech["solar-panel-equipment"].hidden = true
    Tech["discharge-defense-equipment"].hidden = true
    Tech["personal-roboport-equipment"].hidden = true
    Tech["personal-roboport-mk2-equipment"].hidden = true
    Tech["personal-laser-defense-equipment"].hidden = true

    Recipes["energy-shield-equipment"].hidden = true
    Recipes["energy-shield-mk2-equipment"].hidden = true
    Recipes["fission-reactor-equipment"].hidden = true
    Recipes["night-vision-equipment"].hidden = true
    Recipes["battery-equipment"].hidden = true
    Recipes["battery-mk2-equipment"].hidden = true
    Recipes["belt-immunity-equipment"].hidden = true
    Recipes["exoskeleton-equipment"].hidden = true
    Recipes["solar-panel-equipment"].hidden = true
    Recipes["discharge-defense-equipment"].hidden = true
    Recipes["personal-roboport-equipment"].hidden = true
    Recipes["personal-laser-defense-equipment"].hidden = true
    Recipes["personal-roboport-mk2-equipment"].hidden = true

if SS["vanilla-filters"].value then
    Hide_Item("power-armor")
    Hide_Item("modular-armor")
    Hide_Item("power-armor-mk2")
    Hide_Item("battery-equipment")
    Hide_Item("exoskeleton-equipment")
    Hide_Item("battery-mk2-equipment")
    Hide_Item("solar-panel-equipment")
    Hide_Item("night-vision-equipment")
    Hide_Item("belt-immunity-equipment")
    Hide_Item("energy-shield-equipment")
    Hide_Item("fission-reactor-equipment")
    Hide_Item("personal-roboport-equipment")
    Hide_Item("energy-shield-mk2-equipment")
    Hide_Item("discharge-defense-equipment")
    Hide_Item("personal-roboport-mk2-equipment")
    Hide_Item("personal-laser-defense-equipment")
end

if mods["space-age"] then
    Tech["fusion-reactor-equipment"].enabled = false
    Tech["battery-mk3-equipment"].enabled = false

    Tech["fusion-reactor-equipment"].hidden = true
    Tech["battery-mk3-equipment"].hidden = true

    Recipes["fusion-reactor-equipment"].hidden = true
    Recipes["battery-mk3-equipment"].hidden = true

    if SS["SAFilters"].value then
        Hide_Item("fusion-reactor-equipment")
        Hide_Item("battery-mk3-equipment")
    end
end

if mods["Aircraft-space-age"]then
    Tech["afterburner"].enabled = false
    Tech["aircraft-energy-shield"].enabled = false

    Tech["afterburner"].hidden = true
    Tech["aircraft-energy-shield"].hidden = true

    Recipes["aircraft-afterburner"].hidden = true
    Recipes["aircraft-energy-shield"].hidden = true

    Recipes["aircraft-afterburner"].enabled = false
    Recipes["aircraft-energy-shield"].enabled = false

    if SS["AircraftFilters"].value then
        Hide_Item("aircraft-afterburner")
        Hide_Item("aircraft-energy-shield")
    end
    --added to fix any possible soft lock that may occur.
    Tech["afterburner"].prerequisites = nil
    if mods["space-age"]then
        Tech["space-platform-thruster"].prerequisites = {"space-platform"}
    end
end

if mods["linox"]then
    Tech["linox-technology_dysprosium-exoskeleton-equipment"].enabled = false

    Recipes["dysprosium-exoskeleton-equipment"].enabled = false

    Tech["linox-technology_dysprosium-exoskeleton-equipment"].hidden = true

    Recipes["dysprosium-exoskeleton-equipment"].hidden = true

    if SS["LOXFilters"].value then
        Hide_Item("dysprosium-exoskeleton-equipment")
    end
end

if (mods["bobwarfare"] or mods["bobequipment"]) then
--Enabled
    Recipes["bob-power-armor-mk3"].enabled = false
    Recipes["bob-power-armor-mk4"].enabled = false
    Recipes["bob-power-armor-mk5"].enabled = false

    Tech["bob-power-armor-3"].enabled = false
    Tech["bob-power-armor-4"].enabled = false
    Tech["bob-power-armor-5"].enabled = false

--Hidden
    Recipes["bob-power-armor-mk3"].hidden = true
    Recipes["bob-power-armor-mk4"].hidden = true
    Recipes["bob-power-armor-mk5"].hidden = true

    Tech["bob-power-armor-3"].hidden = true
    Tech["bob-power-armor-4"].hidden = true
    Tech["bob-power-armor-5"].hidden = true

    if SS["BobW-filters"].value then
        Hide_Item("bob-power-armor-mk3")
        Hide_Item("bob-power-armor-mk4")
        Hide_Item("bob-power-armor-mk5")
    end
end

if mods["bobequipment"] then
--Enabled
    Tech["battery-mk3-equipment"].enabled = false
    Tech["bob-battery-equipment-4"].enabled = false
    Tech["bob-battery-equipment-5"].enabled = false
    Tech["bob-exoskeleton-equipment-2"].enabled = false
    Tech["bob-exoskeleton-equipment-3"].enabled = false
    Tech["bob-solar-panel-equipment-2"].enabled = false
    Tech["bob-solar-panel-equipment-3"].enabled = false
    Tech["bob-solar-panel-equipment-4"].enabled = false
    Tech["bob-night-vision-equipment-2"].enabled = false
    Tech["bob-night-vision-equipment-3"].enabled = false
    Tech["bob-fission-reactor-equipment-2"].enabled = false
    Tech["bob-fission-reactor-equipment-3"].enabled = false
    Tech["bob-fission-reactor-equipment-4"].enabled = false
    Tech["bob-energy-shield-equipment-3"].enabled = false
    Tech["bob-energy-shield-equipment-4"].enabled = false
    Tech["bob-energy-shield-equipment-5"].enabled = false
    Tech["bob-energy-shield-equipment-6"].enabled = false
    Tech["bob-personal-roboport-mk3-equipment"].enabled = false
    Tech["bob-personal-roboport-mk4-equipment"].enabled = false
    Tech["bob-personal-laser-defense-equipment-2"].enabled = false
    Tech["bob-personal-laser-defense-equipment-3"].enabled = false
    Tech["bob-personal-laser-defense-equipment-4"].enabled = false
    Tech["bob-personal-laser-defense-equipment-5"].enabled = false
    Tech["bob-personal-laser-defense-equipment-6"].enabled = false
    Tech["bob-personal-roboport-modular-equipment-1"].enabled = false
    Tech["bob-personal-roboport-modular-equipment-2"].enabled = false
    Tech["bob-personal-roboport-modular-equipment-3"].enabled = false
    Tech["bob-personal-roboport-modular-equipment-4"].enabled = false

    Recipes["battery-mk3-equipment"].enabled = false
    Recipes["bob-battery-mk4-equipment"].enabled = false
    Recipes["bob-battery-mk5-equipment"].enabled = false
    Recipes["bob-exoskeleton-equipment-2"].enabled = false
    Recipes["bob-exoskeleton-equipment-3"].enabled = false
    Recipes["bob-solar-panel-equipment-2"].enabled = false
    Recipes["bob-solar-panel-equipment-3"].enabled = false
    Recipes["bob-solar-panel-equipment-4"].enabled = false
    Recipes["bob-night-vision-equipment-2"].enabled = false
    Recipes["bob-night-vision-equipment-3"].enabled = false
    Recipes["bob-fission-reactor-equipment-2"].enabled = false
    Recipes["bob-fission-reactor-equipment-3"].enabled = false
    Recipes["bob-fission-reactor-equipment-4"].enabled = false
    Recipes["bob-energy-shield-mk3-equipment"].enabled = false
    Recipes["bob-energy-shield-mk4-equipment"].enabled = false
    Recipes["bob-energy-shield-mk5-equipment"].enabled = false
    Recipes["bob-energy-shield-mk6-equipment"].enabled = false
    Recipes["bob-personal-roboport-mk3-equipment"].enabled = false
    Recipes["bob-personal-roboport-mk4-equipment"].enabled = false
    Recipes["bob-personal-laser-defense-equipment-2"].enabled = false
    Recipes["bob-personal-laser-defense-equipment-3"].enabled = false
    Recipes["bob-personal-laser-defense-equipment-4"].enabled = false
    Recipes["bob-personal-laser-defense-equipment-5"].enabled = false
    Recipes["bob-personal-laser-defense-equipment-6"].enabled = false
    Recipes["bob-personal-roboport-robot-equipment"].enabled = false
    Recipes["bob-personal-roboport-robot-equipment-2"].enabled = false
    Recipes["bob-personal-roboport-robot-equipment-3"].enabled = false
    Recipes["bob-personal-roboport-robot-equipment-4"].enabled = false
    Recipes["bob-personal-roboport-antenna-equipment"].enabled = false
    Recipes["bob-personal-roboport-antenna-equipment-2"].enabled = false
    Recipes["bob-personal-roboport-antenna-equipment-3"].enabled = false
    Recipes["bob-personal-roboport-antenna-equipment-4"].enabled = false
    Recipes["bob-personal-roboport-chargepad-equipment"].enabled = false
    Recipes["bob-personal-roboport-chargepad-equipment-2"].enabled = false
    Recipes["bob-personal-roboport-chargepad-equipment-3"].enabled = false
    Recipes["bob-personal-roboport-chargepad-equipment-4"].enabled = false

--Hidden
    Tech["battery-mk3-equipment"].hidden = true
    Tech["bob-battery-equipment-4"].hidden = true
    Tech["bob-battery-equipment-5"].hidden = true
    Tech["bob-solar-panel-equipment-2"].hidden = true
    Tech["bob-solar-panel-equipment-3"].hidden = true
    Tech["bob-solar-panel-equipment-4"].hidden = true
    Tech["bob-exoskeleton-equipment-2"].hidden = true
    Tech["bob-exoskeleton-equipment-3"].hidden = true
    Tech["bob-night-vision-equipment-2"].hidden = true
    Tech["bob-night-vision-equipment-3"].hidden = true
    Tech["bob-fission-reactor-equipment-2"].hidden = true
    Tech["bob-fission-reactor-equipment-3"].hidden = true
    Tech["bob-fission-reactor-equipment-4"].hidden = true
    Tech["bob-energy-shield-equipment-3"].hidden = true
    Tech["bob-energy-shield-equipment-4"].hidden = true
    Tech["bob-energy-shield-equipment-5"].hidden = true
    Tech["bob-energy-shield-equipment-6"].hidden = true
    Tech["bob-personal-roboport-mk3-equipment"].hidden = true
    Tech["bob-personal-roboport-mk4-equipment"].hidden = true
    Tech["bob-personal-laser-defense-equipment-2"].hidden = true
    Tech["bob-personal-laser-defense-equipment-3"].hidden = true
    Tech["bob-personal-laser-defense-equipment-4"].hidden = true
    Tech["bob-personal-laser-defense-equipment-5"].hidden = true
    Tech["bob-personal-laser-defense-equipment-6"].hidden = true
    Tech["bob-personal-roboport-modular-equipment-1"].hidden = true
    Tech["bob-personal-roboport-modular-equipment-2"].hidden = true
    Tech["bob-personal-roboport-modular-equipment-3"].hidden = true
    Tech["bob-personal-roboport-modular-equipment-4"].hidden = true

    Recipes["battery-mk3-equipment"].hidden = true
    Recipes["bob-battery-mk4-equipment"].hidden = true
    Recipes["bob-battery-mk5-equipment"].hidden = true
    Recipes["bob-solar-panel-equipment-2"].hidden = true
    Recipes["bob-solar-panel-equipment-3"].hidden = true
    Recipes["bob-solar-panel-equipment-4"].hidden = true
    Recipes["bob-exoskeleton-equipment-2"].hidden = true
    Recipes["bob-exoskeleton-equipment-3"].hidden = true
    Recipes["bob-night-vision-equipment-2"].hidden = true
    Recipes["bob-night-vision-equipment-3"].hidden = true
    Recipes["bob-fission-reactor-equipment-2"].hidden = true
    Recipes["bob-fission-reactor-equipment-3"].hidden = true
    Recipes["bob-fission-reactor-equipment-4"].hidden = true
    Recipes["bob-energy-shield-mk3-equipment"].hidden = true
    Recipes["bob-energy-shield-mk4-equipment"].hidden = true
    Recipes["bob-energy-shield-mk5-equipment"].hidden = true
    Recipes["bob-energy-shield-mk6-equipment"].hidden = true
    Recipes["bob-personal-roboport-mk3-equipment"].hidden = true
    Recipes["bob-personal-roboport-mk4-equipment"].hidden = true
    Recipes["bob-personal-laser-defense-equipment-2"].hidden = true
    Recipes["bob-personal-laser-defense-equipment-3"].hidden = true
    Recipes["bob-personal-laser-defense-equipment-4"].hidden = true
    Recipes["bob-personal-laser-defense-equipment-5"].hidden = true
    Recipes["bob-personal-laser-defense-equipment-6"].hidden = true
    Recipes["bob-personal-roboport-robot-equipment"].hidden = true
    Recipes["bob-personal-roboport-robot-equipment-2"].hidden = true
    Recipes["bob-personal-roboport-robot-equipment-3"].hidden = true
    Recipes["bob-personal-roboport-robot-equipment-4"].hidden = true
    Recipes["bob-personal-roboport-antenna-equipment"].hidden = true
    Recipes["bob-personal-roboport-antenna-equipment-2"].hidden = true
    Recipes["bob-personal-roboport-antenna-equipment-3"].hidden = true
    Recipes["bob-personal-roboport-antenna-equipment-4"].hidden = true
    Recipes["bob-personal-roboport-chargepad-equipment"].hidden = true
    Recipes["bob-personal-roboport-chargepad-equipment-2"].hidden = true
    Recipes["bob-personal-roboport-chargepad-equipment-3"].hidden = true
    Recipes["bob-personal-roboport-chargepad-equipment-4"].hidden = true


    if SS["BobE-filters"].value then
        Hide_Item("battery-mk3-equipment")
        Hide_Item("bob-battery-mk4-equipment")
        Hide_Item("bob-battery-mk5-equipment")
        Hide_Item("bob-solar-panel-equipment-2")
        Hide_Item("bob-solar-panel-equipment-3")
        Hide_Item("bob-solar-panel-equipment-4")
        Hide_Item("bob-exoskeleton-equipment-2")
        Hide_Item("bob-exoskeleton-equipment-3")
        Hide_Item("bob-night-vision-equipment-2")
        Hide_Item("bob-night-vision-equipment-3")
        Hide_Item("bob-fission-reactor-equipment-2")
        Hide_Item("bob-fission-reactor-equipment-3")
        Hide_Item("bob-fission-reactor-equipment-4")
        Hide_Item("bob-energy-shield-mk3-equipment")
        Hide_Item("bob-energy-shield-mk4-equipment")
        Hide_Item("bob-energy-shield-mk5-equipment")
        Hide_Item("bob-energy-shield-mk6-equipment")
        Hide_Item("bob-personal-roboport-mk3-equipment")
        Hide_Item("bob-personal-roboport-mk4-equipment")
        Hide_Item("bob-personal-laser-defense-equipment-2")
        Hide_Item("bob-personal-laser-defense-equipment-3")
        Hide_Item("bob-personal-laser-defense-equipment-4")
        Hide_Item("bob-personal-laser-defense-equipment-5")
        Hide_Item("bob-personal-laser-defense-equipment-6")
        Hide_Item("bob-personal-roboport-robot-equipment")
        Hide_Item("bob-personal-roboport-robot-equipment-2")
        Hide_Item("bob-personal-roboport-robot-equipment-3")
        Hide_Item("bob-personal-roboport-robot-equipment-4")
        Hide_Item("bob-personal-roboport-antenna-equipment")
        Hide_Item("bob-personal-roboport-antenna-equipment-2")
        Hide_Item("bob-personal-roboport-antenna-equipment-3")
        Hide_Item("bob-personal-roboport-antenna-equipment-4")
        Hide_Item("bob-personal-roboport-chargepad-equipment")
        Hide_Item("bob-personal-roboport-chargepad-equipment-2")
        Hide_Item("bob-personal-roboport-chargepad-equipment-3")
        Hide_Item("bob-personal-roboport-chargepad-equipment-4")
    end
end

if mods["nightvision_progression-fork"] then
--Enabled
    Tech["night-vision-mk2-equipment"].enabled = false
    Tech["night-vision-mk3-equipment"].enabled = false

    Recipes["night-vision-mk2-equipment"].enabled = false
    Recipes["night-vision-mk3-equipment"].enabled = false

--Hidden
    Tech["night-vision-mk2-equipment"].hidden = true
    Tech["night-vision-mk3-equipment"].hidden = true

    Recipes["night-vision-mk2-equipment"].hidden = true
    Recipes["night-vision-mk3-equipment"].hidden = true

    if SS["ProgresiveNVGsFork_filters"].value then
        Hide_Item("night-vision-mk2-equipment")
        Hide_Item("night-vision-mk3-equipment")
    end
end

if mods["foliax"]then
--Enabled
    Tech["foliax-armor"].enabled = false
    Tech["foliax-night-vision-equipment"].enabled = false
    Tech["foliax-battery-equipment-one"].enabled = false
    Tech["foliax-battery-equipment-two"].enabled = false
    Tech["foliax-belt-immunity-equipment"].enabled = false
    Tech["foliax-exoskeleton-equipment"].enabled = false
    Tech["foliax-personal-roboport-equipment"].enabled = false
    Tech["foliax-solar-panel-equipment"].enabled = false

    Recipes["foliax-armor"].enabled = false
    Recipes["foliax-exoskeleton-equipment"].enabled = false
    Recipes["foliax-solar-panel-equipment"].enabled = false
    Recipes["foliax-night-vision-equipment"].enabled = false
    Recipes["foliax-personal-roboport-equipment"].enabled = false

--Hidden
    Tech["foliax-armor"].hidden = true
    Tech["foliax-night-vision-equipment"].hidden = true
    Tech["foliax-battery-equipment-one"].hidden = true
    Tech["foliax-battery-equipment-two"].hidden = true
    Tech["foliax-belt-immunity-equipment"].hidden = true
    Tech["foliax-exoskeleton-equipment"].hidden = true
    Tech["foliax-personal-roboport-equipment"].hidden = true
    Tech["foliax-solar-panel-equipment"].hidden = true

    Recipes["foliax-armor"].hidden = true
    Recipes["foliax-exoskeleton-equipment"].hidden = true
    Recipes["foliax-solar-panel-equipment"].hidden = true
    Recipes["foliax-night-vision-equipment"].hidden = true
    Recipes["foliax-personal-roboport-equipment"].hidden = true

    if SS["Foliax-filters"].value then
        Hide_Item("foliax-armor")
        Hide_Item("foliax-exoskeleton-equipment")
        Hide_Item("foliax-solar-panel-equipment")
        Hide_Item("foliax-night-vision-equipment")
        Hide_Item("foliax-personal-roboport-equipment")
    end
end


if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
    --Enabled
        Recipes["cb-modular-armor"].enabled = false
        Recipes["cb-power-armor"].enabled = false
        Recipes["cb-power-armor-mk2"].enabled = false

        Tech["cb-modular-armor"].enabled = false
        Tech["cb-power-armor"].enabled = false
        Tech["cb-power-armor-mk2"].enabled = false
    --Hidden
        Recipes["cb-modular-armor"].hidden = true
        Recipes["cb-power-armor"].hidden = true
        Recipes["cb-power-armor-mk2"].hidden = true

        Tech["cb-modular-armor"].hidden = true
        Tech["cb-power-armor"].hidden = true
        Tech["cb-power-armor-mk2"].hidden = true

        if SS["ColdBitersFilters"].value then
            Hide_Item("cb-modular-armor")
            Hide_Item("cb-power-armor")
            Hide_Item("cb-power-armor-mk2")
        end
    end
end

if mods["custom_power_armor_fix"] then
    --Enabled
    Recipes["shield-mk3"].enabled = false
    Recipes["shield-mk4"].enabled = false
    Recipes["energy-cell"].enabled = false
    Recipes["train-shield"].enabled = false
    Recipes["power-armor-mk3"].enabled = false
    Recipes["power-armor-mk4"].enabled = false
    Recipes["power-armor-mk5"].enabled = false
    Recipes["mk2-fast-exoskeleton"].enabled = false
    Recipes["mk2-heavy-exoskeleton"].enabled = false
    Recipes["overcharged-fusion-reactor"].enabled = false

    Tech["shield-mk3"].enabled = false
    Tech["shield-mk4"].enabled = false
    Tech["energy-cell"].enabled = false
    Tech["train-shield"].enabled = false
    Tech["power-armor-mk4"].enabled = false
    Tech["power-armor-mk3"].enabled = false
    Tech["power-armor-mk5"].enabled = false
    Tech["mk2-fast-exoskeleton"].enabled = false
    Tech["mk2-heavy-exoskeleton"].enabled = false
    Tech["overcharged-fusion-reactor"].enabled = false

    --Hidden
    Recipes["shield-mk3"].hidden = true
    Recipes["shield-mk4"].hidden = true
    Recipes["energy-cell"].hidden = true
    Recipes["train-shield"].hidden = true
    Recipes["power-armor-mk3"].hidden = true
    Recipes["power-armor-mk4"].hidden = true
    Recipes["power-armor-mk5"].hidden = true
    Recipes["mk2-fast-exoskeleton"].hidden = true
    Recipes["mk2-heavy-exoskeleton"].hidden = true
    Recipes["overcharged-fusion-reactor"].hidden = true

    Tech["shield-mk3"].hidden = true
    Tech["shield-mk4"].hidden = true
    Tech["energy-cell"].hidden = true
    Tech["train-shield"].hidden = true
    Tech["power-armor-mk3"].hidden = true
    Tech["power-armor-mk4"].hidden = true
    Tech["power-armor-mk5"].hidden = true
    Tech["mk2-fast-exoskeleton"].hidden = true
    Tech["mk2-heavy-exoskeleton"].hidden = true
    Tech["overcharged-fusion-reactor"].hidden = true
    --Filter
    if SS["CPAF-filters"].value then
        Hide_Item("shield-mk3")
        Hide_Item("shield-mk4")
        Hide_Item("energy-cell")
        Hide_Item("train-shield")
        Hide_Item("power-armor-mk3")
        Hide_Item("power-armor-mk4")
        Hide_Item("power-armor-mk5")
        Hide_Item("mk2-fast-exoskeleton")
        Hide_Item("mk2-heavy-exoskeleton")
        Hide_Item("overcharged-fusion-reactor")
    end
end

if mods["Darkstar_utilities_fixed"] then
--Enabled
    Tech["battery-mk3-equipment"].enabled = false
    Tech["battery-mk4-equipment"].enabled = false
    Tech["terra-tech-power-armor-tech"].enabled = false
    Tech["energy-shield-mk3-equipment"].enabled = false
    Tech["advanced-exoskeleton-equipment"].enabled = false
    Tech["terra-tech-power-armor-mk2-tech"].enabled = false

    Recipes["battery-mk3"].enabled = false
    Recipes["battery-mk4"].enabled = false
    Recipes["terra-tech-power-armor"].enabled = false
    Recipes["terra-tech-power-armor-mk2"].enabled = false
    Recipes["advanced-exoskeleton-equipment"].enabled = false
    Recipes["personal-roboport-equipment-mk2"].enabled = false
    Recipes["large-personal-roboport-equipment"].enabled = false
--Hidden
    Tech["battery-mk3-equipment"].hidden = true
    Tech["battery-mk4-equipment"].hidden = true
    Tech["terra-tech-power-armor-tech"].hidden = true
    Tech["energy-shield-mk3-equipment"].hidden = true
    Tech["advanced-exoskeleton-equipment"].hidden = true
    Tech["terra-tech-power-armor-mk2-tech"].hidden = true

    Recipes["battery-mk3"].hidden = true
    Recipes["battery-mk4"].hidden = true
    Recipes["terra-tech-power-armor"].hidden = true
    Recipes["terra-tech-power-armor-mk2"].hidden = true
    Recipes["advanced-exoskeleton-equipment"].hidden = true
    Recipes["personal-roboport-equipment-mk2"].hidden = true
    Recipes["large-personal-roboport-equipment"].hidden = true

    if SS["darkstar-fixed-filters"].value then
        Hide_Item("battery-mk3")
        Hide_Item("battery-mk4")
        Hide_Item("terra-tech-power-armor")
        Hide_Item("terra-tech-power-armor-mk2")
        Hide_Item("advanced-exoskeleton-equipment")
        Hide_Item("personal-roboport-equipment-mk2")
        Hide_Item("large-personal-roboport-equipment")
    end
end

if mods["Hiladdar_Gear"] then
--Hidden
    Recipes["hsmd-power-armor-mk3"].hidden = true
    Recipes["hsmd-power-armor-mk4"].hidden = true
    Recipes["hsmd-solar-panel-s1-equipment"].hidden = true
    Recipes["hsmd-energy-shield-mk2s-equipment"].hidden = true
    Recipes["hsmd-battery-mk2-s1-equipment"].hidden = true
    Recipes["hsmd-exoskeleton-s1-equipment"].hidden = true
    Recipes["hsmd-personal-roboport-mk2s-equipment"].hidden = true
    Recipes["hsmd-night-vision-s1-equipment"].hidden = true
    Recipes["hsmd-personal-laser-defense-s1-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s9-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s8-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s7-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s6-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s5-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s4-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s3-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s2-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-s1-equipment"].hidden = true
    Recipes["hsmd-personal-bugzapper-equipment"].hidden = true
    Recipes["hsmd-fusion-reactor-s1-equipment"].hidden = true
    Recipes["hsmd-fusion-reactor-s2-equipment"].hidden = true
    Recipes["hsmd-fusion-reactor-s3-equipment"].hidden = true
    Recipes["hsmd-stacked-battery"].hidden = true
    Recipes["hsmd-stacked-solar"].hidden = true
    Recipes["hsmd-miniaturizer"].hidden = true
    Recipes["hsmd-solvant"].hidden = true
    Recipes["hsmd-boxed-gravitanium"].hidden = true
    Recipes["hsmd-powdered-gravitanium"].hidden = true
    Recipes["hsmd-cleaned-gravitanium"].hidden = true
    Recipes["hsmd-gravitanium-plate"].hidden = true
    Recipes["hsmd-gravitanium-ore"].hidden = true
    Recipes["hsmd-mixed-ore"].hidden = true

    Tech["hsmd-power-armor-mk3"].hidden = true
    Tech["hsmd-power-armor-mk4"].hidden = true
    Tech["hsmd-personal-bugzapper-equipment"].hidden = true
    Tech["hsmd-personal-bugzapper-equipment-2"].hidden = true
    Tech["hsmd-personal-bugzapper-equipment-3"].hidden = true
    Tech["hsmd-personal-bugzapper-equipment-4"].hidden = true
    Tech["hsmd-miniaturization-1"].hidden = true
    Tech["hsmd-miniaturization-2"].hidden = true
    Tech["hsmd-miniaturization-3"].hidden = true
    Tech["hsmd-miniaturization-4"].hidden = true
    Tech["hsmd-miniaturization-5"].hidden = true
    Tech["hsmd-miniaturization-6"].hidden = true
    Tech["hsmd-miniaturization-7"].hidden = true

--Enabled
    Recipes["hsmd-power-armor-mk3"].enabled = false
    Recipes["hsmd-power-armor-mk4"].enabled = false
    Recipes["hsmd-solar-panel-s1-equipment"].enabled = false
    Recipes["hsmd-energy-shield-mk2s-equipment"].enabled = false
    Recipes["hsmd-battery-mk2-s1-equipment"].enabled = false
    Recipes["hsmd-exoskeleton-s1-equipment"].enabled = false
    Recipes["hsmd-personal-roboport-mk2s-equipment"].enabled = false
    Recipes["hsmd-night-vision-s1-equipment"].enabled = false
    Recipes["hsmd-personal-laser-defense-s1-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s9-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s8-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s7-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s6-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s5-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s4-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s3-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s2-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-s1-equipment"].enabled = false
    Recipes["hsmd-personal-bugzapper-equipment"].enabled = false
    Recipes["hsmd-fusion-reactor-s1-equipment"].enabled = false
    Recipes["hsmd-fusion-reactor-s2-equipment"].enabled = false
    Recipes["hsmd-fusion-reactor-s3-equipment"].enabled = false
    Recipes["hsmd-stacked-battery"].enabled = false
    Recipes["hsmd-stacked-solar"].enabled = false
    Recipes["hsmd-miniaturizer"].enabled = false
    Recipes["hsmd-solvant"].enabled = false
    Recipes["hsmd-boxed-gravitanium"].enabled = false
    Recipes["hsmd-powdered-gravitanium"].enabled = false
    Recipes["hsmd-cleaned-gravitanium"].enabled = false
    Recipes["hsmd-gravitanium-plate"].enabled = false
    Recipes["hsmd-gravitanium-ore"].enabled = false
    Recipes["hsmd-mixed-ore"].enabled = false

    Tech["hsmd-power-armor-mk3"].enabled = false
    Tech["hsmd-power-armor-mk4"].enabled = false
    Tech["hsmd-personal-bugzapper-equipment"].enabled = false
    Tech["hsmd-personal-bugzapper-equipment-2"].enabled = false
    Tech["hsmd-personal-bugzapper-equipment-3"].enabled = false
    Tech["hsmd-personal-bugzapper-equipment-4"].enabled = false
    Tech["hsmd-miniaturization-1"].enabled = false
    Tech["hsmd-miniaturization-2"].enabled = false
    Tech["hsmd-miniaturization-3"].enabled = false
    Tech["hsmd-miniaturization-4"].enabled = false
    Tech["hsmd-miniaturization-5"].enabled = false
    Tech["hsmd-miniaturization-6"].enabled = false
    Tech["hsmd-miniaturization-7"].enabled = false

    if SS["hl_gear-filters"].value then
        Hide_Item("hsmd-power-armor-mk3")
        Hide_Item("hsmd-power-armor-mk4")
        Hide_Item("hsmd-solar-panel-s1-equipment")
        Hide_Item("hsmd-energy-shield-mk2s-equipment")
        Hide_Item("hsmd-battery-mk2-s1-equipment")
        Hide_Item("hsmd-exoskeleton-s1-equipment")
        Hide_Item("hsmd-personal-roboport-mk2s-equipment")
        Hide_Item("hsmd-night-vision-s1-equipment")
        Hide_Item("hsmd-personal-laser-defense-s1-equipment")
        Hide_Item("hsmd-personal-bugzapper-s9-equipment")
        Hide_Item("hsmd-personal-bugzapper-s8-equipment")
        Hide_Item("hsmd-personal-bugzapper-s7-equipment")
        Hide_Item("hsmd-personal-bugzapper-s6-equipment")
        Hide_Item("hsmd-personal-bugzapper-s5-equipment")
        Hide_Item("hsmd-personal-bugzapper-s4-equipment")
        Hide_Item("hsmd-personal-bugzapper-s3-equipment")
        Hide_Item("hsmd-personal-bugzapper-s2-equipment")
        Hide_Item("hsmd-personal-bugzapper-s1-equipment")
        Hide_Item("hsmd-personal-bugzapper-equipment")
        Hide_Item("hsmd-fusion-reactor-s1-equipment")
        Hide_Item("hsmd-fusion-reactor-s2-equipment")
        Hide_Item("hsmd-fusion-reactor-s3-equipment")
        Hide_Item("hsmd-stacked-battery")
        Hide_Item("hsmd-stacked-solar")
        Hide_Item("hsmd-miniaturizer")
        Hide_Item("hsmd-solvant")
        Hide_Item("hsmd-boxed-gravitanium")
        Hide_Item("hsmd-powdered-gravitanium")
        Hide_Item("hsmd-cleaned-gravitanium")
        Hide_Item("hsmd-gravitanium-plate")
        Hide_Item("hsmd-gravitanium-ore")
        Hide_Item("hsmd-mixed-ore")
    end
end

if mods["Krastorio2"] and mods["space-exploration"] then
--Hidden
    Recipes["kr-power-armor-mk3"].hidden = true
    Recipes["kr-power-armor-mk4"].hidden = true
    Recipes["kr-portable-generator-equipment"].hidden = true
    Recipes["kr-additional-engine-equipment"].hidden = true
    Recipes["kr-small-portable-generator-equipment"].hidden = true
    Recipes["kr-advanced-additional-engine-equipment"].hidden = true
    Recipes["kr-big-solar-panel-equipment"].hidden = true
    Recipes["kr-big-battery-equipment"].hidden = true
    Recipes["kr-fusion-reactor-equipment"].hidden = true
    Recipes["kr-antimatter-reactor-equipment"].hidden = true
    Recipes["kr-advanced-exoskeleton-equipment"].hidden = true
    Recipes["kr-superior-exoskeleton-equipment"].hidden = true
    Recipes["kr-personal-laser-defense-mk2-equipment"].hidden = true
    Recipes["kr-personal-laser-defense-mk3-equipment"].hidden = true
    Recipes["kr-personal-laser-defense-mk4-equipment"].hidden = true

    Tech["kr-power-armor-mk3"].hidden = true
    Tech["kr-power-armor-mk4"].hidden = true
    Tech["kr-portable-generator-equipment"].hidden = true
    Tech["kr-advanced-additional-engine-equipment"].hidden = true
    Tech["kr-battery-mk3-equipment"].hidden = true
    Tech["kr-fusion-reactor-equipment"].hidden = true
    Tech["kr-antimatter-reactor-equipment"].hidden = true
    Tech["kr-advanced-exoskeleton-equipment"].hidden = true
    Tech["kr-superior-exoskeleton-equipment"].hidden = true
    Tech["kr-superior-solar-panel-equipment"].hidden = true
    Tech["kr-superior-night-vision-equipment"].hidden = true
    Tech["kr-personal-laser-defense-mk2-equipment"].hidden = true
    Tech["kr-personal-laser-defense-mk3-equipment"].hidden = true
    Tech["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled
    Recipes["kr-power-armor-mk3"].enabled = false
    Recipes["kr-power-armor-mk4"].enabled = false
    Recipes["kr-additional-engine-equipment"].enabled = false
    Recipes["kr-advanced-additional-engine-equipment"].enabled = false
    Recipes["kr-portable-generator-equipment"].enabled = false
    Recipes["kr-small-portable-generator-equipment"].enabled = false
    Recipes["kr-big-battery-equipment"].enabled = false
    Recipes["kr-big-solar-panel-equipment"].enabled = false
    Recipes["kr-fusion-reactor-equipment"].enabled = false
    Recipes["kr-antimatter-reactor-equipment"].enabled = false
    Recipes["kr-advanced-exoskeleton-equipment"].enabled = false
    Recipes["kr-superior-exoskeleton-equipment"].enabled = false
    Recipes["kr-personal-laser-defense-mk2-equipment"].enabled = false
    Recipes["kr-personal-laser-defense-mk3-equipment"].enabled = false
    Recipes["kr-personal-laser-defense-mk4-equipment"].enabled = false

    Tech["kr-power-armor-mk3"].enabled = false
    Tech["kr-power-armor-mk4"].enabled = false
    Tech["kr-portable-generator-equipment"].enabled = false
    Tech["kr-battery-mk3-equipment"].enabled = false
    Tech["kr-fusion-reactor-equipment"].enabled = false
    Tech["kr-advanced-additional-engine-equipment"].enabled = false
    Tech["kr-antimatter-reactor-equipment"].enabled = false
    Tech["kr-superior-solar-panel-equipment"].enabled = false
    Tech["kr-superior-night-vision-equipment"].enabled = false
    Tech["kr-advanced-exoskeleton-equipment"].enabled = false
    Tech["kr-superior-exoskeleton-equipment"].enabled = false
    Tech["kr-personal-laser-defense-mk2-equipment"].enabled = false
    Tech["kr-personal-laser-defense-mk3-equipment"].enabled = false
    Tech["kr-personal-laser-defense-mk4-equipment"].enabled = false

    if SS["KE-filters"].value then
        Hide_Item("kr-power-armor-mk3")
        Hide_Item("kr-power-armor-mk4")
        Hide_Item("kr-portable-generator-equipment")
        Hide_Item("kr-small-portable-generator-equipment")
        Hide_Item("kr-big-solar-panel-equipment")
        Hide_Item("kr-superior-solar-panel-equipment")
        Hide_Item("kr-big-superior-solar-panel-equipment")
        Hide_Item("kr-fusion-reactor-equipment")
        Hide_Item("kr-antimatter-reactor-equipment")
        Hide_Item("kr-big-battery-equipment")
        Hide_Item("kr-big-battery-mk2-equipment")
        Hide_Item("kr-battery-mk3-equipment")
        Hide_Item("kr-big-battery-mk3-equipment")
        Hide_Item("kr-superior-exoskeleton-equipment")
        Hide_Item("kr-advanced-exoskeleton-equipment")
        Hide_Item("kr-superior-night-vision-equipment")
        Hide_Item("kr-personal-laser-defense-mk2-equipment")
        Hide_Item("kr-personal-laser-defense-mk3-equipment")
        Hide_Item("kr-personal-laser-defense-mk4-equipment")
    end
elseif (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
--Hidden Recipes
    if mods["Krastorio2-spaced-out"] then
        Recipes["kr-vehicle-roboport-equipment"].hidden = true
        Recipes["kr-cargo-expansion-equipment"].hidden = true
    end
    if not mods["Krastorio2-spaced-out"] then
        Recipes["kr-power-armor-mk3"].hidden = true
        Recipes["kr-power-armor-mk4"].hidden = true
        Recipes["kr-battery-mk3-equipment"].hidden = true
        Recipes["kr-big-battery-equipment"].hidden = true
        Recipes["kr-big-battery-mk2-equipment"].hidden = true
        Recipes["kr-big-battery-mk3-equipment"].hidden = true
    end
    Recipes["kr-additional-engine-equipment"].hidden = true
    Recipes["kr-advanced-additional-engine-equipment"].hidden = true
    Recipes["kr-small-portable-generator-equipment"].hidden = true
    Recipes["kr-portable-generator-equipment"].hidden = true
    Recipes["kr-big-solar-panel-equipment"].hidden = true
    Recipes["kr-superior-solar-panel-equipment"].hidden = true
    Recipes["kr-big-superior-solar-panel-equipment"].hidden = true
    Recipes["kr-fusion-reactor-equipment"].hidden = true
    Recipes["kr-energy-shield-mk3-equipment"].hidden = true
    Recipes["kr-energy-shield-mk4-equipment"].hidden = true
    Recipes["kr-antimatter-reactor-equipment"].hidden = true
    Recipes["kr-advanced-exoskeleton-equipment"].hidden = true
    Recipes["kr-superior-exoskeleton-equipment"].hidden = true
    Recipes["kr-superior-night-vision-equipment"].hidden = true
    Recipes["kr-personal-laser-defense-mk2-equipment"].hidden = true
    Recipes["kr-personal-laser-defense-mk3-equipment"].hidden = true
    Recipes["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled Recipes
    if mods["Krastorio2-spaced-out"] then
        Recipes["kr-vehicle-roboport-equipment"].enabled = false
        Recipes["kr-cargo-expansion-equipment"].enabled = false
    end
    if not mods["Krastorio2-spaced-out"] then
        Recipes["kr-power-armor-mk3"].enabled = false
        Recipes["kr-power-armor-mk4"].enabled = false
        Recipes["kr-battery-mk3-equipment"].enabled = false
        Recipes["kr-big-battery-equipment"].enabled = false
        Recipes["kr-big-battery-mk2-equipment"].enabled = false
        Recipes["kr-big-battery-mk3-equipment"].enabled = false
    end
    Recipes["kr-additional-engine-equipment"].enabled = false
    Recipes["kr-advanced-additional-engine-equipment"].enabled = false
    Recipes["kr-portable-generator-equipment"].enabled = false
    Recipes["kr-small-portable-generator-equipment"].enabled = false
    Recipes["kr-big-solar-panel-equipment"].enabled = false
    Recipes["kr-fusion-reactor-equipment"].enabled = false
    Recipes["kr-antimatter-reactor-equipment"].enabled = false
    Recipes["kr-energy-shield-mk3-equipment"].enabled = false
    Recipes["kr-energy-shield-mk4-equipment"].enabled = false
    Recipes["kr-advanced-exoskeleton-equipment"].enabled = false
    Recipes["kr-superior-exoskeleton-equipment"].enabled = false
    Recipes["kr-superior-night-vision-equipment"].enabled = false
    Recipes["kr-personal-laser-defense-mk2-equipment"].enabled = false
    Recipes["kr-personal-laser-defense-mk3-equipment"].enabled = false
    Recipes["kr-personal-laser-defense-mk4-equipment"].enabled = false

--Hidden Tech
    if mods["Krastorio2-spaced-out"] then
        Tech["kr-cargo-expansion"].hidden = true
    end
    if not mods["Krastorio2-spaced-out"] then
        Tech["kr-power-armor-mk3"].hidden = true
        Tech["kr-power-armor-mk4"].hidden = true
        Tech["kr-battery-mk3-equipment"].hidden = true
    end
    Tech["kr-advanced-additional-engine-equipment"].hidden = true
    Tech["kr-portable-generator-equipment"].hidden = true
    Tech["kr-fusion-reactor-equipment"].hidden = true
    Tech["kr-antimatter-reactor-equipment"].hidden = true
    Tech["kr-advanced-exoskeleton-equipment"].hidden = true
    Tech["kr-superior-exoskeleton-equipment"].hidden = true
    Tech["kr-superior-night-vision-equipment"].hidden = true
    Tech["kr-energy-shield-mk3-equipment"].hidden = true
    Tech["kr-energy-shield-mk4-equipment"].hidden = true
    Tech["kr-personal-laser-defense-mk2-equipment"].hidden = true
    Tech["kr-personal-laser-defense-mk3-equipment"].hidden = true
    Tech["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled Tech
    if mods["Krastorio2-spaced-out"] then
        Tech["kr-cargo-expansion"].enabled = false
    end
    if not mods["Krastorio2-spaced-out"] then
        Tech["kr-power-armor-mk3"].enabled = false
        Tech["kr-power-armor-mk4"].enabled = false
        Tech["kr-battery-mk3-equipment"].enabled = false
    end
    Tech["kr-advanced-additional-engine-equipment"].enabled = false
    Tech["kr-portable-generator-equipment"].enabled = false
    Tech["kr-fusion-reactor-equipment"].enabled = false
    Tech["kr-antimatter-reactor-equipment"].enabled = false
    Tech["kr-energy-shield-mk3-equipment"].enabled = false
    Tech["kr-energy-shield-mk4-equipment"].enabled = false
    Tech["kr-superior-solar-panel-equipment"].enabled = false
    Tech["kr-superior-night-vision-equipment"].enabled = false
    Tech["kr-advanced-exoskeleton-equipment"].enabled = false
    Tech["kr-superior-exoskeleton-equipment"].enabled = false
    Tech["kr-personal-laser-defense-mk2-equipment"].enabled = false
    Tech["kr-personal-laser-defense-mk3-equipment"].enabled = false
    Tech["kr-personal-laser-defense-mk4-equipment"].enabled = false

    if SS["K2-filters"].value then
        if mods["Krastorio2-spaced-out"] then
            Hide_Item("kr-vehicle-roboport-equipment")
            Hide_Item("kr-cargo-expansion-equipment")
        end
        if not mods["Krastorio2-spaced-out"] then
            Hide_Item("kr-power-armor-mk3")
            Hide_Item("kr-power-armor-mk4")
            Hide_Item("kr-big-battery-equipment")
            Hide_Item("kr-battery-mk3-equipment")
            Hide_Item("kr-big-battery-mk2-equipment")
            Hide_Item("kr-big-battery-mk3-equipment")
        end
        Hide_Item("kr-additional-engine-equipment")
        Hide_Item("kr-advanced-additional-engine-equipment")
        Hide_Item("kr-small-portable-generator-equipment")
        Hide_Item("kr-portable-generator-equipment")
        Hide_Item("kr-big-solar-panel-equipment")
        Hide_Item("kr-superior-solar-panel-equipment")
        Hide_Item("kr-big-superior-solar-panel-equipment")
        Hide_Item("kr-fusion-reactor-equipment")
        Hide_Item("kr-antimatter-reactor-equipment")
        Hide_Item("kr-energy-shield-mk3-equipment")
        Hide_Item("kr-energy-shield-mk4-equipment")
        Hide_Item("kr-advanced-exoskeleton-equipment")
        Hide_Item("kr-superior-exoskeleton-equipment")
        Hide_Item("kr-superior-night-vision-equipment")
        Hide_Item("kr-personal-laser-defense-mk2-equipment")
        Hide_Item("kr-personal-laser-defense-mk3-equipment")
        Hide_Item("kr-personal-laser-defense-mk4-equipment")
    end
end

if mods["space-exploration"] then
--Enabled
    Recipes["se-rtg-equipment"].enabled = false
    Recipes["energy-shield-mk3-equipment"].enabled = false
    Recipes["energy-shield-mk4-equipment"].enabled = false
    Recipes["energy-shield-mk5-equipment"].enabled = false
    Recipes["energy-shield-mk6-equipment"].enabled = false
    Recipes["se-adaptive-armour-equipment-1"].enabled = false
    Recipes["se-adaptive-armour-equipment-2"].enabled = false
    Recipes["se-adaptive-armour-equipment-3"].enabled = false
    Recipes["se-adaptive-armour-equipment-4"].enabled = false
    Recipes["se-adaptive-armour-equipment-5"].enabled = false
    Recipes["se-fusion-reactor-equipment"].enabled = false
    Recipes["se-antimatter-reactor-equipment"].enabled = false

    Tech["se-rtg-equipment"].enabled = false
    Tech["se-adaptive-armour-1"].enabled = false
    Tech["se-adaptive-armour-2"].enabled = false
    Tech["se-adaptive-armour-3"].enabled = false
    Tech["se-adaptive-armour-4"].enabled = false
    Tech["se-adaptive-armour-5"].enabled = false
    Tech["energy-shield-mk3-equipment"].enabled = false
    Tech["energy-shield-mk4-equipment"].enabled = false
    Tech["energy-shield-mk5-equipment"].enabled = false
    Tech["energy-shield-mk6-equipment"].enabled = false

--Hidden
    Recipes["se-rtg-equipment"].hidden = true
    Recipes["energy-shield-mk3-equipment"].hidden = true
    Recipes["energy-shield-mk4-equipment"].hidden = true
    Recipes["energy-shield-mk5-equipment"].hidden = true
    Recipes["energy-shield-mk6-equipment"].hidden = true
    Recipes["se-fusion-reactor-equipment"].hidden = true
    Recipes["se-antimatter-reactor-equipment"].hidden = true
    Recipes["se-adaptive-armour-equipment-1"].hidden = true
    Recipes["se-adaptive-armour-equipment-2"].hidden = true
    Recipes["se-adaptive-armour-equipment-3"].hidden = true
    Recipes["se-adaptive-armour-equipment-4"].hidden = true
    Recipes["se-adaptive-armour-equipment-5"].hidden = true

    Tech["se-rtg-equipment"].hidden = true
    Tech["se-adaptive-armour-1"].hidden = true
    Tech["se-adaptive-armour-2"].hidden = true
    Tech["se-adaptive-armour-3"].hidden = true
    Tech["se-adaptive-armour-4"].hidden = true
    Tech["se-adaptive-armour-5"].hidden = true
    Tech["energy-shield-mk3-equipment"].hidden = true
    Tech["energy-shield-mk4-equipment"].hidden = true
    Tech["energy-shield-mk5-equipment"].hidden = true
    Tech["energy-shield-mk6-equipment"].hidden = true

    if SS["SE-filters"].value then
        Hide_Item("se-rtg-equipment")
        Hide_Item("energy-shield-mk3-equipment")
        Hide_Item("energy-shield-mk4-equipment")
        Hide_Item("energy-shield-mk5-equipment")
        Hide_Item("energy-shield-mk6-equipment")
        Hide_Item("se-adaptive-armour-equipment-1")
        Hide_Item("se-adaptive-armour-equipment-2")
        Hide_Item("se-adaptive-armour-equipment-3")
        Hide_Item("se-adaptive-armour-equipment-4")
        Hide_Item("se-adaptive-armour-equipment-5")
    end
end

if (mods["RampantArsenalFork"] or mods["RampantArsenal"]) then
-- Enabled 
    Tech["rampant-arsenal-technology-power-armor-mk3"].enabled = false
    Tech["rampant-arsenal-technology-battery-equipment-3"].enabled = false
    Tech["rampant-arsenal-technology-shield-equipment-2"].enabled = false
    Tech["rampant-arsenal-technology-generator-equipment-2"].enabled = false
    Tech["rampant-arsenal-technology-generator-equipment-3"].enabled = false

    Recipes["mk3-battery-rampant-arsenal"].enabled = false
    Recipes["mk3-shield-rampant-arsenal"].enabled = false
    Recipes["mk3-generator-rampant-arsenal"].enabled = false
    Recipes["nuclear-generator-rampant-arsenal"].enabled = false
    Recipes["power-armor-mk3-armor-rampant-arsenal"].enabled = false

-- Hidden        
    Tech["rampant-arsenal-technology-power-armor-mk3"].hidden = true
    Tech["rampant-arsenal-technology-battery-equipment-3"].hidden = true
    Tech["rampant-arsenal-technology-shield-equipment-2"].hidden = true
    Tech["rampant-arsenal-technology-generator-equipment-2"].hidden = true
    Tech["rampant-arsenal-technology-generator-equipment-3"].hidden = true

    Recipes["mk3-shield-rampant-arsenal"].hidden = true
    Recipes["mk3-battery-rampant-arsenal"].hidden = true
    Recipes["mk3-generator-rampant-arsenal"].hidden = true
    Recipes["nuclear-generator-rampant-arsenal"].hidden = true
    Recipes["power-armor-mk3-armor-rampant-arsenal"].hidden = true

    if SS["Arsenal-filters"].value then
        Hide_Item("mk3-shield-rampant-arsenal")
        Hide_Item("mk3-battery-rampant-arsenal")
        Hide_Item("mk3-generator-rampant-arsenal")
        Hide_Item("nuclear-generator-rampant-arsenal")
        Hide_Item("power-armor-mk3-armor-rampant-arsenal")
    end
end

if mods["Power Armor MK3"] then
    --Hidden
    Recipes["pamk3-se"].hidden = true
    Recipes["pamk3-pdd"].hidden = true
    Recipes["pamk3-inff"].hidden = true
    Recipes["pamk3-nvmk2"].hidden = true
    Recipes["pamk3-esmk3"].hidden = true
    Recipes["pamk3-pamk3"].hidden = true
    Recipes["pamk3-pamk4"].hidden = true
    Recipes["pamk3-battmk3"].hidden = true

    Tech["pamk3-se"].hidden = true
    Tech["pamk3-pdd"].hidden = true
    Tech["pamk3-nvmk2"].hidden = true
    Tech["pamk3-esmk3"].hidden = true
    Tech["pamk3-pamk3"].hidden = true
    Tech["pamk3-pamk4"].hidden = true
    Tech["pamk3-battmk3"].hidden = true
--Enabled
    Recipes["pamk3-se"].enabled = false
    Recipes["pamk3-pdd"].enabled = false
    Recipes["pamk3-inff"].enabled = false
    Recipes["pamk3-nvmk2"].enabled = false
    Recipes["pamk3-esmk3"].enabled = false
    Recipes["pamk3-pamk3"].enabled = false
    Recipes["pamk3-pamk4"].enabled = false
    Recipes["pamk3-battmk3"].enabled = false

    Tech["pamk3-se"].enabled = false
    Tech["pamk3-pdd"].enabled = false
    Tech["pamk3-nvmk2"].enabled = false
    Tech["pamk3-esmk3"].enabled = false
    Tech["pamk3-pamk3"].enabled = false
    Tech["pamk3-pamk4"].enabled = false
    Tech["pamk3-battmk3"].enabled = false
--Filters
    if SS["MK3-filters"].value then
        Hide_Item("pamk3-se")
        Hide_Item("pamk3-pdd")
        Hide_Item("pamk3-inff")
        Hide_Item("pamk3-nvmk2")
        Hide_Item("pamk3-esmk3")
        Hide_Item("pamk3-pamk3")
        Hide_Item("pamk3-pamk4")
        Hide_Item("pamk3-battmk3")
    end
end

if mods["PowerAndArmor"] then
    --Enabled
    Recipes["PaA-battery-mk3-equipment"].enabled = false
    Recipes["PaA-power-armor-mk2-upgrade"].enabled = false
    Recipes["PaA-power-armor-mk3-upgrade"].enabled = false
    Recipes["PaA-exoskeleton-mk2-equipment"].enabled = false
    Recipes["PaA-night-vision-mk2-equipment"].enabled = false
    Recipes["PaA-energy-shield-mk3-equipment"].enabled = false
    Recipes["PaA-par-fusion-reactor-mk2-equipment"].enabled = false
    Recipes["PaA-personal-roboport-mk3-equipment"].enabled = false
    Recipes["PaA-personal-dockingport-mk3-equipment"].enabled = false
    Recipes["PaA-personal-laser-defense-mk2-equipment"].enabled = false
    Recipes["PaA-personal-laser-defense-mk3-equipment"].enabled = false

    Tech["PaA-armor-upgrades"].enabled = false
    Tech["PaA-mk3-power-armor"].enabled = false
    Tech["PaA-mk4-power-armor"].enabled = false
    Tech["PaA-mk3-battery-equipment"].enabled = false
    Tech["PaA-mk2-exoskeleton-equipment"].enabled = false
    Tech["PaA-mk2-night-vision-equipment"].enabled = false
    Tech["PaA-mk3-energy-shield-equipment"].enabled = false
    Tech["PaA-mk2-fusion-reactor-equipment"].enabled = false
    Tech["PaA-mk3-personal-roboport-equipment"].enabled = false
    Tech["PaA-mk2-personal-laser-defense-equipment"].enabled = false
    Tech["PaA-mk3-personal-laser-defense-equipment"].enabled = false
    --Hidden
    Recipes["PaA-power-armor-mk3"].hidden = true
    Recipes["PaA-power-armor-mk4"].hidden = true
    Recipes["PaA-battery-mk3-equipment"].hidden = true
    Recipes["PaA-power-armor-mk3-upgrade"].hidden = true
    Recipes["PaA-power-armor-mk2-upgrade"].hidden = true
    Recipes["PaA-exoskeleton-mk2-equipment"].hidden = true
    Recipes["PaA-night-vision-mk2-equipment"].hidden = true
    Recipes["PaA-energy-shield-mk3-equipment"].hidden = true
    Recipes["PaA-par-fusion-reactor-mk2-equipment"].hidden = true
    Recipes["PaA-personal-roboport-mk3-equipment"].hidden = true
    Recipes["PaA-personal-dockingport-mk3-equipment"].hidden = true
    Recipes["PaA-personal-laser-defense-mk2-equipment"].hidden = true
    Recipes["PaA-personal-laser-defense-mk3-equipment"].hidden = true

    Tech["PaA-armor-upgrades"].hidden = true
    Tech["PaA-mk3-power-armor"].hidden = true
    Tech["PaA-mk4-power-armor"].hidden = true
    Tech["PaA-mk3-battery-equipment"].hidden = true
    Tech["PaA-mk2-exoskeleton-equipment"].hidden = true
    Tech["PaA-mk2-night-vision-equipment"].hidden = true
    Tech["PaA-mk3-energy-shield-equipment"].hidden = true
    Tech["PaA-mk2-fusion-reactor-equipment"].hidden = true
    Tech["PaA-mk3-personal-roboport-equipment"].hidden = true
    Tech["PaA-mk2-personal-laser-defense-equipment"].hidden = true
    Tech["PaA-mk3-personal-laser-defense-equipment"].hidden = true

    --filters
    if SS["PA-filters"].value then
        Hide_Item("PaA-power-armor-mk3")
        Hide_Item("PaA-power-armor-mk4")
        Hide_Item("PaA-battery-mk3-equipment")
        Hide_Item("PaA-exoskeleton-mk2-equipment")
        Hide_Item("PaA-night-vision-mk2-equipment")
        Hide_Item("PaA-energy-shield-mk3-equipment")
        Hide_Item("PaA-par-fusion-reactor-mk2-equipment")
        Hide_Item("PaA-personal-roboport-mk3-equipment")
        Hide_Item("PaA-personal-dockingport-mk3-equipment")
        Hide_Item("PaA-personal-laser-defense-mk2-equipment")
        Hide_Item("PaA-personal-laser-defense-mk3-equipment")
    end
end