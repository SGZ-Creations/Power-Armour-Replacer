local DRR = data.raw.recipe
local DRT = data.raw.technology
local DRI = data.raw.item
local DRA = data.raw.armor
local SS = settings.startup

--[[
    Clean up phase of all mods adding technology Recipes for Armour's & Equipment's.
    making the game less confusing on what to craft and hopefully not have 2-4 recipes.
    From diffrent mods giving u multiple "MK3 armours" in game.

    At some point should u have, 2-4 mods giving u armours this mod will hopefully do a clean up & convert your previous Armour, Equipment to one version. 
    Which i want to let u modify to your likings in the end. If it ends up being to OP u can adjust it all.

    Only exception with this mod is that i won't be duping anything regarding bob's vehicle Equipment as it has nothing to do with this.
]]

local function Hide_Item(name)
    local item = DRI[name]
    if item then
        item.hidden = true
    end

    local armour_item = DRA[name]
    if armour_item then
        armour_item.hidden = true
    end
    if not (item or armour_item) then
        log("Could not find "..name)
    end
end

--Enabled
    DRT["modular-armor"].enabled = false
    DRT["power-armor"].enabled = false
    DRT["power-armor-mk2"].enabled = false
--Hidden
    DRR["modular-armor"].hidden = true
    DRR["power-armor"].hidden = true
    DRR["power-armor-mk2"].hidden = true

    DRT["modular-armor"].hidden = true
    DRT["power-armor"].hidden = true
    DRT["power-armor-mk2"].hidden = true

--Enabled
    DRT["energy-shield-equipment"].enabled = false
    DRT["energy-shield-mk2-equipment"].enabled = false
    DRT["fission-reactor-equipment"].enabled = false
    DRT["night-vision-equipment"].enabled = false
    DRT["battery-equipment"].enabled = false
    DRT["battery-mk2-equipment"].enabled = false
    DRT["belt-immunity-equipment"].enabled = false
    DRT["exoskeleton-equipment"].enabled = false
    DRT["personal-laser-defense-equipment"].enabled = false
    DRT["personal-roboport-equipment"].enabled = false
    DRT["personal-roboport-mk2-equipment"].enabled = false
    DRT["solar-panel-equipment"].enabled = false

    DRR["power-armor"].enabled = false
    DRR["modular-armor"].enabled = false
    DRR["power-armor-mk2"].enabled = false
    DRR["battery-equipment"].enabled = false
    DRR["exoskeleton-equipment"].enabled = false
    DRR["battery-mk2-equipment"].enabled = false
    DRR["solar-panel-equipment"].enabled = false
    DRR["night-vision-equipment"].enabled = false
    DRR["belt-immunity-equipment"].enabled = false
    DRR["energy-shield-equipment"].enabled = false
    DRR["fission-reactor-equipment"].enabled = false
    DRR["personal-roboport-equipment"].enabled = false
    DRR["energy-shield-mk2-equipment"].enabled = false
    DRR["personal-roboport-mk2-equipment"].enabled = false
    DRR["personal-laser-defense-equipment"].enabled = false

--Hidden
    DRT["fission-reactor-equipment"].hidden = true
    DRT["energy-shield-equipment"].hidden = true
    DRT["night-vision-equipment"].hidden = true
    DRT["energy-shield-mk2-equipment"].hidden = true
    DRT["exoskeleton-equipment"].hidden = true
    DRT["belt-immunity-equipment"].hidden = true
    DRT["battery-equipment"].hidden = true
    DRT["battery-mk2-equipment"].hidden = true
    DRT["solar-panel-equipment"].hidden = true
    DRT["personal-roboport-equipment"].hidden = true
    DRT["personal-roboport-mk2-equipment"].hidden = true
    DRT["personal-laser-defense-equipment"].hidden = true

    DRR["energy-shield-equipment"].hidden = true
    DRR["energy-shield-mk2-equipment"].hidden = true
    DRR["fission-reactor-equipment"].hidden = true
    DRR["night-vision-equipment"].hidden = true
    DRR["battery-equipment"].hidden = true
    DRR["battery-mk2-equipment"].hidden = true
    DRR["belt-immunity-equipment"].hidden = true
    DRR["exoskeleton-equipment"].hidden = true
    DRR["solar-panel-equipment"].hidden = true
    DRR["personal-roboport-equipment"].hidden = true
    DRR["personal-laser-defense-equipment"].hidden = true
    DRR["personal-roboport-mk2-equipment"].hidden = true

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
    Hide_Item("personal-roboport-mk2-equipment")
    Hide_Item("personal-laser-defense-equipment")
end

if mods["PARs-SpaceAge-Extension"] then
    if (mods["space-age"] or mods["mech-armor"])then

        DRT["mech-armor"].enabled = false

        DRR["mech-armor"].hidden = true

        DRT["mech-armor"].hidden = true

        if settings.startup["MechTechFilters"].value then
            Hide_Item("mech-armor")
        end
    end
end

if mods["space-age"] then

    DRT["fusion-reactor-equipment"].enabled = false
    DRT["battery-mk3-equipment"].enabled = false

    DRT["fusion-reactor-equipment"].hidden = true
    DRT["battery-mk3-equipment"].hidden = true

    DRR["fusion-reactor-equipment"].hidden = true
    DRR["battery-mk3-equipment"].hidden = true

    if SS["SAFilters"].value then
        Hide_Item("fusion-reactor-equipment")
        Hide_Item("battery-mk3-equipment")
    end
end

if mods["bobwarfare"] then
--Enabled
    DRR["bob-power-armor-mk3"].enabled = false
    DRR["bob-power-armor-mk4"].enabled = false
    DRR["bob-power-armor-mk5"].enabled = false

    DRT["bob-power-armor-3"].enabled = false
    DRT["bob-power-armor-4"].enabled = false
    DRT["bob-power-armor-5"].enabled = false

--Hidden
    DRR["bob-power-armor-mk3"].hidden = true
    DRR["bob-power-armor-mk4"].hidden = true
    DRR["bob-power-armor-mk5"].hidden = true

    DRT["bob-power-armor-3"].hidden = true
    DRT["bob-power-armor-4"].hidden = true
    DRT["bob-power-armor-5"].hidden = true

    if SS["BobW-filters"].value then
        Hide_Item("bob-power-armor-mk3")
        Hide_Item("bob-power-armor-mk4")
        Hide_Item("bob-power-armor-mk5")
    end
end

if mods["bobequipment"] then
--Enabled
    DRT["bob-battery-equipment-3"].enabled = false
    DRT["bob-battery-equipment-4"].enabled = false
    DRT["bob-battery-equipment-5"].enabled = false
    DRT["bob-battery-equipment-6"].enabled = false
    DRT["bob-exoskeleton-equipment-2"].enabled = false
    DRT["bob-exoskeleton-equipment-3"].enabled = false
    DRT["bob-solar-panel-equipment-2"].enabled = false
    DRT["bob-solar-panel-equipment-3"].enabled = false
    DRT["bob-solar-panel-equipment-4"].enabled = false
    DRT["bob-night-vision-equipment-2"].enabled = false
    DRT["bob-night-vision-equipment-3"].enabled = false
    DRT["bob-fission-reactor-equipment-2"].enabled = false
    DRT["bob-fission-reactor-equipment-3"].enabled = false
    DRT["bob-fission-reactor-equipment-4"].enabled = false
    DRT["bob-energy-shield-equipment-3"].enabled = false
    DRT["bob-energy-shield-equipment-4"].enabled = false
    DRT["bob-energy-shield-equipment-5"].enabled = false
    DRT["bob-energy-shield-equipment-6"].enabled = false
    DRT["bob-personal-roboport-mk3-equipment"].enabled = false
    DRT["bob-personal-roboport-mk4-equipment"].enabled = false
    DRT["bob-personal-laser-defense-equipment-2"].enabled = false
    DRT["bob-personal-laser-defense-equipment-3"].enabled = false
    DRT["bob-personal-laser-defense-equipment-4"].enabled = false
    DRT["bob-personal-laser-defense-equipment-5"].enabled = false
    DRT["bob-personal-laser-defense-equipment-6"].enabled = false

    DRR["bob-battery-mk3-equipment"].enabled = false
    DRR["bob-battery-mk4-equipment"].enabled = false
    DRR["bob-battery-mk5-equipment"].enabled = false
    DRR["bob-battery-mk6-equipment"].enabled = false
    DRR["bob-exoskeleton-equipment-2"].enabled = false
    DRR["bob-exoskeleton-equipment-3"].enabled = false
    DRR["bob-solar-panel-equipment-2"].enabled = false
    DRR["bob-solar-panel-equipment-3"].enabled = false
    DRR["bob-solar-panel-equipment-4"].enabled = false
    DRR["bob-night-vision-equipment-2"].enabled = false
    DRR["bob-night-vision-equipment-3"].enabled = false
    DRR["bob-fission-reactor-equipment-2"].enabled = false
    DRR["bob-fission-reactor-equipment-3"].enabled = false
    DRR["bob-fission-reactor-equipment-4"].enabled = false
    DRR["bob-energy-shield-mk3-equipment"].enabled = false
    DRR["bob-energy-shield-mk4-equipment"].enabled = false
    DRR["bob-energy-shield-mk5-equipment"].enabled = false
    DRR["bob-energy-shield-mk6-equipment"].enabled = false
    DRR["bob-personal-roboport-mk3-equipment"].enabled = false
    DRR["bob-personal-roboport-mk4-equipment"].enabled = false
    DRR["bob-personal-laser-defense-equipment-2"].enabled = false
    DRR["bob-personal-laser-defense-equipment-3"].enabled = false
    DRR["bob-personal-laser-defense-equipment-4"].enabled = false
    DRR["bob-personal-laser-defense-equipment-5"].enabled = false
    DRR["bob-personal-laser-defense-equipment-6"].enabled = false

--Hidden
    DRT["bob-battery-equipment-3"].hidden = true
    DRT["bob-battery-equipment-4"].hidden = true
    DRT["bob-battery-equipment-5"].hidden = true
    DRT["bob-battery-equipment-6"].hidden = true
    DRT["bob-solar-panel-equipment-2"].hidden = true
    DRT["bob-solar-panel-equipment-3"].hidden = true
    DRT["bob-solar-panel-equipment-4"].hidden = true
    DRT["bob-exoskeleton-equipment-2"].hidden = true
    DRT["bob-exoskeleton-equipment-3"].hidden = true
    DRT["bob-night-vision-equipment-2"].hidden = true
    DRT["bob-night-vision-equipment-3"].hidden = true
    DRT["bob-fission-reactor-equipment-2"].hidden = true
    DRT["bob-fission-reactor-equipment-3"].hidden = true
    DRT["bob-fission-reactor-equipment-4"].hidden = true
    DRT["bob-energy-shield-equipment-3"].hidden = true
    DRT["bob-energy-shield-equipment-4"].hidden = true
    DRT["bob-energy-shield-equipment-5"].hidden = true
    DRT["bob-energy-shield-equipment-6"].hidden = true
    DRT["bob-personal-roboport-mk3-equipment"].hidden = true
    DRT["bob-personal-roboport-mk4-equipment"].hidden = true
    DRT["bob-personal-laser-defense-equipment-2"].hidden = true
    DRT["bob-personal-laser-defense-equipment-3"].hidden = true
    DRT["bob-personal-laser-defense-equipment-4"].hidden = true
    DRT["bob-personal-laser-defense-equipment-5"].hidden = true
    DRT["bob-personal-laser-defense-equipment-6"].hidden = true

    DRR["bob-battery-mk3-equipment"].hidden = true
    DRR["bob-battery-mk4-equipment"].hidden = true
    DRR["bob-battery-mk5-equipment"].hidden = true
    DRR["bob-battery-mk6-equipment"].hidden = true
    DRR["bob-solar-panel-equipment-2"].hidden = true
    DRR["bob-solar-panel-equipment-3"].hidden = true
    DRR["bob-solar-panel-equipment-4"].hidden = true
    DRR["bob-exoskeleton-equipment-2"].hidden = true
    DRR["bob-exoskeleton-equipment-3"].hidden = true
    DRR["bob-night-vision-equipment-2"].hidden = true
    DRR["bob-night-vision-equipment-3"].hidden = true
    DRR["bob-fission-reactor-equipment-2"].hidden = true
    DRR["bob-fission-reactor-equipment-3"].hidden = true
    DRR["bob-fission-reactor-equipment-4"].hidden = true
    DRR["bob-energy-shield-mk3-equipment"].hidden = true
    DRR["bob-energy-shield-mk4-equipment"].hidden = true
    DRR["bob-energy-shield-mk5-equipment"].hidden = true
    DRR["bob-energy-shield-mk6-equipment"].hidden = true
    DRR["bob-personal-roboport-mk3-equipment"].hidden = true
    DRR["bob-personal-roboport-mk4-equipment"].hidden = true
    DRR["bob-personal-laser-defense-equipment-2"].hidden = true
    DRR["bob-personal-laser-defense-equipment-3"].hidden = true
    DRR["bob-personal-laser-defense-equipment-4"].hidden = true
    DRR["bob-personal-laser-defense-equipment-5"].hidden = true
    DRR["bob-personal-laser-defense-equipment-6"].hidden = true

    if SS["BobE-filters"].value then
        Hide_Item("bob-battery-mk3-equipment")
        Hide_Item("bob-battery-mk4-equipment")
        Hide_Item("bob-battery-mk5-equipment")
        Hide_Item("bob-battery-mk6-equipment")
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
    end
end

if mods["Cold_biters"]then
    if SS["cb-enable-cold-warfare"].value == true then
    --Enabled
        DRR["cb-modular-armor"].enabled = false
        DRR["cb-power-armor"].enabled = false
        DRR["cb-power-armor-mk2"].enabled = false

        DRT["cb-modular-armor"].enabled = false
        DRT["cb-power-armor"].enabled = false
        DRT["cb-power-armor-mk2"].enabled = false
    --Hidden
        DRR["cb-modular-armor"].hidden = true
        DRR["cb-power-armor"].hidden = true
        DRR["cb-power-armor-mk2"].hidden = true

        DRT["cb-modular-armor"].hidden = true
        DRT["cb-power-armor"].hidden = true
        DRT["cb-power-armor-mk2"].hidden = true

        if SS["ColdBitersFilters"].value then
            Hide_Item("cb-modular-armor")
            Hide_Item("cb-power-armor")
            Hide_Item("cb-power-armor-mk2")
        end
    end
end

if mods["custom_power_armor_fix"] then
    --Enabled
    DRR["shield-mk3"].enabled = false
    DRR["shield-mk4"].enabled = false
    DRR["energy-cell"].enabled = false
    DRR["train-shield"].enabled = false
    DRR["power-armor-mk3"].enabled = false
    DRR["power-armor-mk4"].enabled = false
    DRR["power-armor-mk5"].enabled = false
    DRR["mk2-fast-exoskeleton"].enabled = false
    DRR["mk2-heavy-exoskeleton"].enabled = false
    DRR["overcharged-fusion-reactor"].enabled = false

    DRT["shield-mk3"].enabled = false
    DRT["shield-mk4"].enabled = false
    DRT["energy-cell"].enabled = false
    DRT["train-shield"].enabled = false
    DRT["power-armor-mk4"].enabled = false
    DRT["power-armor-mk3"].enabled = false
    DRT["power-armor-mk5"].enabled = false
    DRT["mk2-fast-exoskeleton"].enabled = false
    DRT["mk2-heavy-exoskeleton"].enabled = false
    DRT["overcharged-fusion-reactor"].enabled = false

    --Hidden
    DRR["shield-mk3"].hidden = true
    DRR["shield-mk4"].hidden = true
    DRR["energy-cell"].hidden = true
    DRR["train-shield"].hidden = true
    DRR["power-armor-mk3"].hidden = true
    DRR["power-armor-mk4"].hidden = true
    DRR["power-armor-mk5"].hidden = true
    DRR["mk2-fast-exoskeleton"].hidden = true
    DRR["mk2-heavy-exoskeleton"].hidden = true
    DRR["overcharged-fusion-reactor"].hidden = true

    DRT["shield-mk3"].hidden = true
    DRT["shield-mk4"].hidden = true
    DRT["energy-cell"].hidden = true
    DRT["train-shield"].hidden = true
    DRT["power-armor-mk3"].hidden = true
    DRT["power-armor-mk4"].hidden = true
    DRT["power-armor-mk5"].hidden = true
    DRT["mk2-fast-exoskeleton"].hidden = true
    DRT["mk2-heavy-exoskeleton"].hidden = true
    DRT["overcharged-fusion-reactor"].hidden = true
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
    DRT["battery-mk3-equipment"].enabled = false
    DRT["battery-mk4-equipment"].enabled = false
    DRT["terra-tech-power-armor-tech"].enabled = false
    DRT["energy-shield-mk3-equipment"].enabled = false
    DRT["advanced-exoskeleton-equipment"].enabled = false
    DRT["terra-tech-power-armor-mk2-tech"].enabled = false

    DRR["battery-mk3"].enabled = false
    DRR["battery-mk4"].enabled = false
    DRR["terra-tech-power-armor"].enabled = false
    DRR["terra-tech-power-armor-mk2"].enabled = false
    DRR["advanced-exoskeleton-equipment"].enabled = false
    DRR["personal-roboport-equipment-mk2"].enabled = false
    DRR["large-personal-roboport-equipment"].enabled = false
--Hidden
    DRT["battery-mk3-equipment"].hidden = true
    DRT["battery-mk4-equipment"].hidden = true
    DRT["terra-tech-power-armor-tech"].hidden = true
    DRT["energy-shield-mk3-equipment"].hidden = true
    DRT["advanced-exoskeleton-equipment"].hidden = true
    DRT["terra-tech-power-armor-mk2-tech"].hidden = true

    DRR["battery-mk3"].hidden = true
    DRR["battery-mk4"].hidden = true
    DRR["terra-tech-power-armor"].hidden = true
    DRR["terra-tech-power-armor-mk2"].hidden = true
    DRR["advanced-exoskeleton-equipment"].hidden = true
    DRR["personal-roboport-equipment-mk2"].hidden = true
    DRR["large-personal-roboport-equipment"].hidden = true

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
    DRR["hsmd-power-armor-mk3"].hidden = true
    DRR["hsmd-power-armor-mk4"].hidden = true
    DRR["hsmd-solar-panel-s1-equipment"].hidden = true
    DRR["hsmd-energy-shield-mk2s-equipment"].hidden = true
    DRR["hsmd-battery-mk2-s1-equipment"].hidden = true
    DRR["hsmd-exoskeleton-s1-equipment"].hidden = true
    DRR["hsmd-personal-roboport-mk2s-equipment"].hidden = true
    DRR["hsmd-night-vision-s1-equipment"].hidden = true
    DRR["hsmd-personal-laser-defense-s1-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s9-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s8-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s7-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s6-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s5-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s4-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s3-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s2-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-s1-equipment"].hidden = true
    DRR["hsmd-personal-bugzapper-equipment"].hidden = true
    DRR["hsmd-fusion-reactor-s1-equipment"].hidden = true
    DRR["hsmd-fusion-reactor-s2-equipment"].hidden = true
    DRR["hsmd-fusion-reactor-s3-equipment"].hidden = true
    DRR["hsmd-stacked-battery"].hidden = true
    DRR["hsmd-stacked-solar"].hidden = true
    DRR["hsmd-miniaturizer"].hidden = true
    DRR["hsmd-solvant"].hidden = true
    DRR["hsmd-boxed-gravitanium"].hidden = true
    DRR["hsmd-powdered-gravitanium"].hidden = true
    DRR["hsmd-cleaned-gravitanium"].hidden = true
    DRR["hsmd-gravitanium-plate"].hidden = true
    DRR["hsmd-gravitanium-ore"].hidden = true
    DRR["hsmd-mixed-ore"].hidden = true

    DRT["hsmd-power-armor-mk3"].hidden = true
    DRT["hsmd-power-armor-mk4"].hidden = true
    DRT["hsmd-personal-bugzapper-equipment"].hidden = true
    DRT["hsmd-personal-bugzapper-equipment-2"].hidden = true
    DRT["hsmd-personal-bugzapper-equipment-3"].hidden = true
    DRT["hsmd-personal-bugzapper-equipment-4"].hidden = true
    DRT["hsmd-miniaturization-1"].hidden = true
    DRT["hsmd-miniaturization-2"].hidden = true
    DRT["hsmd-miniaturization-3"].hidden = true
    DRT["hsmd-miniaturization-4"].hidden = true
    DRT["hsmd-miniaturization-5"].hidden = true
    DRT["hsmd-miniaturization-6"].hidden = true
    DRT["hsmd-miniaturization-7"].hidden = true

--Enabled
    DRR["hsmd-power-armor-mk3"].enabled = false
    DRR["hsmd-power-armor-mk4"].enabled = false
    DRR["hsmd-solar-panel-s1-equipment"].enabled = false
    DRR["hsmd-energy-shield-mk2s-equipment"].enabled = false
    DRR["hsmd-battery-mk2-s1-equipment"].enabled = false
    DRR["hsmd-exoskeleton-s1-equipment"].enabled = false
    DRR["hsmd-personal-roboport-mk2s-equipment"].enabled = false
    DRR["hsmd-night-vision-s1-equipment"].enabled = false
    DRR["hsmd-personal-laser-defense-s1-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s9-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s8-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s7-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s6-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s5-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s4-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s3-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s2-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-s1-equipment"].enabled = false
    DRR["hsmd-personal-bugzapper-equipment"].enabled = false
    DRR["hsmd-fusion-reactor-s1-equipment"].enabled = false
    DRR["hsmd-fusion-reactor-s2-equipment"].enabled = false
    DRR["hsmd-fusion-reactor-s3-equipment"].enabled = false
    DRR["hsmd-stacked-battery"].enabled = false
    DRR["hsmd-stacked-solar"].enabled = false
    DRR["hsmd-miniaturizer"].enabled = false
    DRR["hsmd-solvant"].enabled = false
    DRR["hsmd-boxed-gravitanium"].enabled = false
    DRR["hsmd-powdered-gravitanium"].enabled = false
    DRR["hsmd-cleaned-gravitanium"].enabled = false
    DRR["hsmd-gravitanium-plate"].enabled = false
    DRR["hsmd-gravitanium-ore"].enabled = false
    DRR["hsmd-mixed-ore"].enabled = false

    DRT["hsmd-power-armor-mk3"].enabled = false
    DRT["hsmd-power-armor-mk4"].enabled = false
    DRT["hsmd-personal-bugzapper-equipment"].enabled = false
    DRT["hsmd-personal-bugzapper-equipment-2"].enabled = false
    DRT["hsmd-personal-bugzapper-equipment-3"].enabled = false
    DRT["hsmd-personal-bugzapper-equipment-4"].enabled = false
    DRT["hsmd-miniaturization-1"].enabled = false
    DRT["hsmd-miniaturization-2"].enabled = false
    DRT["hsmd-miniaturization-3"].enabled = false
    DRT["hsmd-miniaturization-4"].enabled = false
    DRT["hsmd-miniaturization-5"].enabled = false
    DRT["hsmd-miniaturization-6"].enabled = false
    DRT["hsmd-miniaturization-7"].enabled = false

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
    DRR["kr-power-armor-mk3"].hidden = true
    DRR["kr-power-armor-mk4"].hidden = true
    DRR["kr-portable-generator-equipment"].hidden = true
    DRR["kr-additional-engine-equipment"].hidden = true
    DRR["kr-small-portable-generator-equipment"].hidden = true
    DRR["kr-advanced-additional-engine-equipment"].hidden = true
    DRR["kr-big-solar-panel-equipment"].hidden = true
    DRR["kr-big-battery-equipment"].hidden = true
    DRR["kr-fusion-reactor-equipment"].hidden = true
    DRR["kr-antimatter-reactor-equipment"].hidden = true
    DRR["kr-advanced-exoskeleton-equipment"].hidden = true
    DRR["kr-superior-exoskeleton-equipment"].hidden = true
    DRR["kr-personal-laser-defense-mk2-equipment"].hidden = true
    DRR["kr-personal-laser-defense-mk3-equipment"].hidden = true
    DRR["kr-personal-laser-defense-mk4-equipment"].hidden = true

    DRT["kr-power-armor-mk3"].hidden = true
    DRT["kr-power-armor-mk4"].hidden = true
    DRT["kr-portable-generator-equipment"].hidden = true
    DRT["kr-advanced-additional-engine-equipment"].hidden = true
    DRT["kr-battery-mk3-equipment"].hidden = true
    DRT["kr-fusion-reactor-equipment"].hidden = true
    DRT["kr-antimatter-reactor-equipment"].hidden = true
    DRT["kr-advanced-exoskeleton-equipment"].hidden = true
    DRT["kr-superior-exoskeleton-equipment"].hidden = true
    DRT["kr-superior-solar-panel-equipment"].hidden = true
    DRT["kr-superior-night-vision-equipment"].hidden = true
    DRT["kr-personal-laser-defense-mk2-equipment"].hidden = true
    DRT["kr-personal-laser-defense-mk3-equipment"].hidden = true
    DRT["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled
    DRR["kr-power-armor-mk3"].enabled = false
    DRR["kr-power-armor-mk4"].enabled = false
    DRR["kr-additional-engine-equipment"].enabled = false
    DRR["kr-advanced-additional-engine-equipment"].enabled = false
    DRR["kr-portable-generator-equipment"].enabled = false
    DRR["kr-small-portable-generator-equipment"].enabled = false
    DRR["kr-big-battery-equipment"].enabled = false
    DRR["kr-big-solar-panel-equipment"].enabled = false
    DRR["kr-fusion-reactor-equipment"].enabled = false
    DRR["kr-antimatter-reactor-equipment"].enabled = false
    DRR["kr-advanced-exoskeleton-equipment"].enabled = false
    DRR["kr-superior-exoskeleton-equipment"].enabled = false
    DRR["kr-personal-laser-defense-mk2-equipment"].enabled = false
    DRR["kr-personal-laser-defense-mk3-equipment"].enabled = false
    DRR["kr-personal-laser-defense-mk4-equipment"].enabled = false

    DRT["kr-power-armor-mk3"].enabled = false
    DRT["kr-power-armor-mk4"].enabled = false
    DRT["kr-portable-generator-equipment"].enabled = false
    DRT["kr-battery-mk3-equipment"].enabled = false
    DRT["kr-fusion-reactor-equipment"].enabled = false
    DRT["kr-advanced-additional-engine-equipment"].enabled = false
    DRT["kr-antimatter-reactor-equipment"].enabled = false
    DRT["kr-superior-solar-panel-equipment"].enabled = false
    DRT["kr-superior-night-vision-equipment"].enabled = false
    DRT["kr-advanced-exoskeleton-equipment"].enabled = false
    DRT["kr-superior-exoskeleton-equipment"].enabled = false
    DRT["kr-personal-laser-defense-mk2-equipment"].enabled = false
    DRT["kr-personal-laser-defense-mk3-equipment"].enabled = false
    DRT["kr-personal-laser-defense-mk4-equipment"].enabled = false

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
        DRR["kr-vehicle-roboport-equipment"].hidden = true
    end
    if not mods["Krastorio2-spaced-out"] then
        DRR["kr-power-armor-mk3"].hidden = true
        DRR["kr-power-armor-mk4"].hidden = true
        DRR["kr-battery-mk3-equipment"].hidden = true
        DRR["kr-big-battery-equipment"].hidden = true
        DRR["kr-big-battery-mk2-equipment"].hidden = true
        DRR["kr-big-battery-mk3-equipment"].hidden = true
    end
    DRR["kr-additional-engine-equipment"].hidden = true
    DRR["kr-advanced-additional-engine-equipment"].hidden = true
    DRR["kr-small-portable-generator-equipment"].hidden = true
    DRR["kr-portable-generator-equipment"].hidden = true
    DRR["kr-big-solar-panel-equipment"].hidden = true
    DRR["kr-superior-solar-panel-equipment"].hidden = true
    DRR["kr-big-superior-solar-panel-equipment"].hidden = true
    DRR["kr-fusion-reactor-equipment"].hidden = true
    DRR["kr-energy-shield-mk3-equipment"].hidden = true
    DRR["kr-energy-shield-mk4-equipment"].hidden = true
    DRR["kr-antimatter-reactor-equipment"].hidden = true
    DRR["kr-advanced-exoskeleton-equipment"].hidden = true
    DRR["kr-superior-exoskeleton-equipment"].hidden = true
    DRR["kr-superior-night-vision-equipment"].hidden = true
    DRR["kr-personal-laser-defense-mk2-equipment"].hidden = true
    DRR["kr-personal-laser-defense-mk3-equipment"].hidden = true
    DRR["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled Recipes
    if mods["Krastorio2-spaced-out"] then
        DRR["kr-vehicle-roboport-equipment"].enabled = false
    end
    if not mods["Krastorio2-spaced-out"] then
        DRR["kr-power-armor-mk3"].enabled = false
        DRR["kr-power-armor-mk4"].enabled = false
        DRR["kr-battery-mk3-equipment"].enabled = false
        DRR["kr-big-battery-equipment"].enabled = false
        DRR["kr-big-battery-mk2-equipment"].enabled = false
        DRR["kr-big-battery-mk3-equipment"].enabled = false
    end
    DRR["kr-additional-engine-equipment"].enabled = false
    DRR["kr-advanced-additional-engine-equipment"].enabled = false
    DRR["kr-portable-generator-equipment"].enabled = false
    DRR["kr-small-portable-generator-equipment"].enabled = false
    DRR["kr-big-solar-panel-equipment"].enabled = false
    DRR["kr-fusion-reactor-equipment"].enabled = false
    DRR["kr-antimatter-reactor-equipment"].enabled = false
    DRR["kr-energy-shield-mk3-equipment"].enabled = false
    DRR["kr-energy-shield-mk4-equipment"].enabled = false
    DRR["kr-advanced-exoskeleton-equipment"].enabled = false
    DRR["kr-superior-exoskeleton-equipment"].enabled = false
    DRR["kr-superior-night-vision-equipment"].enabled = false
    DRR["kr-personal-laser-defense-mk2-equipment"].enabled = false
    DRR["kr-personal-laser-defense-mk3-equipment"].enabled = false
    DRR["kr-personal-laser-defense-mk4-equipment"].enabled = false

--Hidden Tech
    if not mods["Krastorio2-spaced-out"] then
        DRT["kr-power-armor-mk3"].hidden = true
        DRT["kr-power-armor-mk4"].hidden = true
        DRT["kr-battery-mk3-equipment"].hidden = true
    end
    DRT["kr-advanced-additional-engine-equipment"].hidden = true
    DRT["kr-portable-generator-equipment"].hidden = true
    DRT["kr-fusion-reactor-equipment"].hidden = true
    DRT["kr-antimatter-reactor-equipment"].hidden = true
    DRT["kr-advanced-exoskeleton-equipment"].hidden = true
    DRT["kr-superior-exoskeleton-equipment"].hidden = true
    DRT["kr-superior-night-vision-equipment"].hidden = true
    DRT["kr-energy-shield-mk3-equipment"].hidden = true
    DRT["kr-energy-shield-mk4-equipment"].hidden = true
    DRT["kr-personal-laser-defense-mk2-equipment"].hidden = true
    DRT["kr-personal-laser-defense-mk3-equipment"].hidden = true
    DRT["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled Tech
    if not mods["Krastorio2-spaced-out"] then
        DRT["kr-power-armor-mk3"].enabled = false
        DRT["kr-power-armor-mk4"].enabled = false
        DRT["kr-battery-mk3-equipment"].enabled = false
    end
    DRT["kr-advanced-additional-engine-equipment"].enabled = false
    DRT["kr-portable-generator-equipment"].enabled = false
    DRT["kr-fusion-reactor-equipment"].enabled = false
    DRT["kr-antimatter-reactor-equipment"].enabled = false
    DRT["kr-energy-shield-mk3-equipment"].enabled = false
    DRT["kr-energy-shield-mk4-equipment"].enabled = false
    DRT["kr-superior-solar-panel-equipment"].enabled = false
    DRT["kr-superior-night-vision-equipment"].enabled = false
    DRT["kr-advanced-exoskeleton-equipment"].enabled = false
    DRT["kr-superior-exoskeleton-equipment"].enabled = false
    DRT["kr-personal-laser-defense-mk2-equipment"].enabled = false
    DRT["kr-personal-laser-defense-mk3-equipment"].enabled = false
    DRT["kr-personal-laser-defense-mk4-equipment"].enabled = false

    if SS["K2-filters"].value then
        if mods["Krastorio2-spaced-out"] then
            Hide_Item("kr-vehicle-roboport-equipment")
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
    DRR["se-rtg-equipment"].enabled = false
    DRR["energy-shield-mk3-equipment"].enabled = false
    DRR["energy-shield-mk4-equipment"].enabled = false
    DRR["energy-shield-mk5-equipment"].enabled = false
    DRR["energy-shield-mk6-equipment"].enabled = false
    DRR["se-adaptive-armour-equipment-1"].enabled = false
    DRR["se-adaptive-armour-equipment-2"].enabled = false
    DRR["se-adaptive-armour-equipment-3"].enabled = false
    DRR["se-adaptive-armour-equipment-4"].enabled = false
    DRR["se-adaptive-armour-equipment-5"].enabled = false
    DRR["se-fusion-reactor-equipment"].enabled = false
    DRR["se-antimatter-reactor-equipment"].enabled = false

    DRT["se-rtg-equipment"].enabled = false
    DRT["se-adaptive-armour-1"].enabled = false
    DRT["se-adaptive-armour-2"].enabled = false
    DRT["se-adaptive-armour-3"].enabled = false
    DRT["se-adaptive-armour-4"].enabled = false
    DRT["se-adaptive-armour-5"].enabled = false
    DRT["energy-shield-mk3-equipment"].enabled = false
    DRT["energy-shield-mk4-equipment"].enabled = false
    DRT["energy-shield-mk5-equipment"].enabled = false
    DRT["energy-shield-mk6-equipment"].enabled = false

--Hidden
    DRR["se-rtg-equipment"].hidden = true
    DRR["energy-shield-mk3-equipment"].hidden = true
    DRR["energy-shield-mk4-equipment"].hidden = true
    DRR["energy-shield-mk5-equipment"].hidden = true
    DRR["energy-shield-mk6-equipment"].hidden = true
    DRR["se-fusion-reactor-equipment"].hidden = true
    DRR["se-antimatter-reactor-equipment"].hidden = true
    DRR["se-adaptive-armour-equipment-1"].hidden = true
    DRR["se-adaptive-armour-equipment-2"].hidden = true
    DRR["se-adaptive-armour-equipment-3"].hidden = true
    DRR["se-adaptive-armour-equipment-4"].hidden = true
    DRR["se-adaptive-armour-equipment-5"].hidden = true

    DRT["se-rtg-equipment"].hidden = true
    DRT["se-adaptive-armour-1"].hidden = true
    DRT["se-adaptive-armour-2"].hidden = true
    DRT["se-adaptive-armour-3"].hidden = true
    DRT["se-adaptive-armour-4"].hidden = true
    DRT["se-adaptive-armour-5"].hidden = true
    DRT["energy-shield-mk3-equipment"].hidden = true
    DRT["energy-shield-mk4-equipment"].hidden = true
    DRT["energy-shield-mk5-equipment"].hidden = true
    DRT["energy-shield-mk6-equipment"].hidden = true

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
    DRT["rampant-arsenal-technology-power-armor-mk3"].enabled = false
    DRT["rampant-arsenal-technology-battery-equipment-3"].enabled = false
    DRT["rampant-arsenal-technology-shield-equipment-2"].enabled = false
    DRT["rampant-arsenal-technology-generator-equipment-2"].enabled = false
    DRT["rampant-arsenal-technology-generator-equipment-3"].enabled = false

    DRR["mk3-battery-rampant-arsenal"].enabled = false
    DRR["mk3-shield-rampant-arsenal"].enabled = false
    DRR["mk3-generator-rampant-arsenal"].enabled = false
    DRR["nuclear-generator-rampant-arsenal"].enabled = false
    DRR["power-armor-mk3-armor-rampant-arsenal"].enabled = false

-- Hidden        
    DRT["rampant-arsenal-technology-power-armor-mk3"].hidden = true
    DRT["rampant-arsenal-technology-battery-equipment-3"].hidden = true
    DRT["rampant-arsenal-technology-shield-equipment-2"].hidden = true
    DRT["rampant-arsenal-technology-generator-equipment-2"].hidden = true
    DRT["rampant-arsenal-technology-generator-equipment-3"].hidden = true

    DRR["mk3-shield-rampant-arsenal"].hidden = true
    DRR["mk3-battery-rampant-arsenal"].hidden = true
    DRR["mk3-generator-rampant-arsenal"].hidden = true
    DRR["nuclear-generator-rampant-arsenal"].hidden = true
    DRR["power-armor-mk3-armor-rampant-arsenal"].hidden = true

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
    DRR["pamk3-se"].hidden = true
    DRR["pamk3-inff"].hidden = true
    DRR["pamk3-nvmk2"].hidden = true
    DRR["pamk3-esmk3"].hidden = true
    DRR["pamk3-pamk3"].hidden = true
    DRR["pamk3-pamk4"].hidden = true
    DRR["pamk3-battmk3"].hidden = true

    DRT["pamk3-se"].hidden = true
    DRT["pamk3-nvmk2"].hidden = true
    DRT["pamk3-esmk3"].hidden = true
    DRT["pamk3-pamk3"].hidden = true
    DRT["pamk3-pamk4"].hidden = true
    DRT["pamk3-battmk3"].hidden = true
--Enabled
    DRR["pamk3-se"].enabled = false
    DRR["pamk3-inff"].enabled = false
    DRR["pamk3-nvmk2"].enabled = false
    DRR["pamk3-esmk3"].enabled = false
    DRR["pamk3-pamk3"].enabled = false
    DRR["pamk3-pamk4"].enabled = false
    DRR["pamk3-battmk3"].enabled = false

    DRT["pamk3-se"].enabled = false
    DRT["pamk3-nvmk2"].enabled = false
    DRT["pamk3-esmk3"].enabled = false
    DRT["pamk3-pamk3"].enabled = false
    DRT["pamk3-pamk4"].enabled = false
    DRT["pamk3-battmk3"].enabled = false
--Filters
    if SS["MK3-filters"].value then
        Hide_Item("pamk3-se")
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
    DRR["PaA-battery-mk3-equipment"].enabled = false
    DRR["PaA-power-armor-mk2-upgrade"].enabled = false
    DRR["PaA-power-armor-mk3-upgrade"].enabled = false
    DRR["PaA-exoskeleton-mk2-equipment"].enabled = false
    DRR["PaA-night-vision-mk2-equipment"].enabled = false
    DRR["PaA-energy-shield-mk3-equipment"].enabled = false
    DRR["PaA-par-fusion-reactor-mk2-equipment"].enabled = false
    DRR["PaA-personal-roboport-mk3-equipment"].enabled = false
    DRR["PaA-personal-dockingport-mk3-equipment"].enabled = false
    DRR["PaA-personal-laser-defense-mk2-equipment"].enabled = false
    DRR["PaA-personal-laser-defense-mk3-equipment"].enabled = false

    DRT["PaA-armor-upgrades"].enabled = false
    DRT["PaA-mk3-power-armor"].enabled = false
    DRT["PaA-mk4-power-armor"].enabled = false
    DRT["PaA-mk3-battery-equipment"].enabled = false
    DRT["PaA-mk2-exoskeleton-equipment"].enabled = false
    DRT["PaA-mk2-night-vision-equipment"].enabled = false
    DRT["PaA-mk3-energy-shield-equipment"].enabled = false
    DRT["PaA-mk2-fusion-reactor-equipment"].enabled = false
    DRT["PaA-mk3-personal-roboport-equipment"].enabled = false
    DRT["PaA-mk2-personal-laser-defense-equipment"].enabled = false
    DRT["PaA-mk3-personal-laser-defense-equipment"].enabled = false
    --Hidden
    DRR["PaA-power-armor-mk3"].hidden = true
    DRR["PaA-power-armor-mk4"].hidden = true
    DRR["PaA-battery-mk3-equipment"].hidden = true
    DRR["PaA-power-armor-mk3-upgrade"].hidden = true
    DRR["PaA-power-armor-mk2-upgrade"].hidden = true
    DRR["PaA-exoskeleton-mk2-equipment"].hidden = true
    DRR["PaA-night-vision-mk2-equipment"].hidden = true
    DRR["PaA-energy-shield-mk3-equipment"].hidden = true
    DRR["PaA-par-fusion-reactor-mk2-equipment"].hidden = true
    DRR["PaA-personal-roboport-mk3-equipment"].hidden = true
    DRR["PaA-personal-dockingport-mk3-equipment"].hidden = true
    DRR["PaA-personal-laser-defense-mk2-equipment"].hidden = true
    DRR["PaA-personal-laser-defense-mk3-equipment"].hidden = true

    DRT["PaA-armor-upgrades"].hidden = true
    DRT["PaA-mk3-power-armor"].hidden = true
    DRT["PaA-mk4-power-armor"].hidden = true
    DRT["PaA-mk3-battery-equipment"].hidden = true
    DRT["PaA-mk2-exoskeleton-equipment"].hidden = true
    DRT["PaA-mk2-night-vision-equipment"].hidden = true
    DRT["PaA-mk3-energy-shield-equipment"].hidden = true
    DRT["PaA-mk2-fusion-reactor-equipment"].hidden = true
    DRT["PaA-mk3-personal-roboport-equipment"].hidden = true
    DRT["PaA-mk2-personal-laser-defense-equipment"].hidden = true
    DRT["PaA-mk3-personal-laser-defense-equipment"].hidden = true

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