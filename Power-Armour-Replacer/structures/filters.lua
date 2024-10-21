--[[
        Clean up phase of all mods adding technology Recipes for Armour's & Equipment's.
        making the game less confusing on waht to craft and hopefully not have 2-4 recipes.
        From diffrent mods giving u multiple "MK3 armours" in game.

        At some point should u have, 2-4 mods giving u armours this mod will hopefully do a clean up & convert your previous Armour, Equipment to one version. 
        Which i want to let u modify to your likings in the end. If it ends up being to OP u can adjust it all.

        Only exception with this mod is that i won't be duping anything regarding bob's vehicle Equipment as it has nothing to do with this.
]]

local function Hide_Item(name)
    local item = data.raw.item[name]
    if item then
            item.hidden = true
    end

    local armour_item = data.raw.armor[name]
    if armour_item then
        armour_item.hidden = true
    end
    if not (item or armour_item) then
        log("Could not find "..name)
    end
end

--Enabled
    data.raw.technology["modular-armor"].enabled = false
    data.raw.technology["power-armor"].enabled = false
    data.raw.technology["power-armor-mk2"].enabled = false
--Hidden
    data.raw.recipe["modular-armor"].hidden = true
    data.raw.recipe["power-armor"].hidden = true
    data.raw.recipe["power-armor-mk2"].hidden = true

    data.raw.technology["modular-armor"].hidden = true
    data.raw.technology["power-armor"].hidden = true
    data.raw.technology["power-armor-mk2"].hidden = true

--Enabled
    data.raw.technology["energy-shield-equipment"].enabled = false
    data.raw.technology["energy-shield-mk2-equipment"].enabled = false
    data.raw.technology["fission-reactor-equipment"].enabled = false
    data.raw.technology["night-vision-equipment"].enabled = false
    data.raw.technology["battery-equipment"].enabled = false
    data.raw.technology["battery-mk2-equipment"].enabled = false
    data.raw.technology["belt-immunity-equipment"].enabled = false
    data.raw.technology["exoskeleton-equipment"].enabled = false
    data.raw.technology["personal-laser-defense-equipment"].enabled = false
    data.raw.technology["personal-roboport-equipment"].enabled = false
    data.raw.technology["personal-roboport-mk2-equipment"].enabled = false
    data.raw.technology["solar-panel-equipment"].enabled = false

    data.raw.recipe["power-armor"].enabled = false
    data.raw.recipe["modular-armor"].enabled = false
    data.raw.recipe["power-armor-mk2"].enabled = false
    data.raw.recipe["battery-equipment"].enabled = false
    data.raw.recipe["exoskeleton-equipment"].enabled = false
    data.raw.recipe["battery-mk2-equipment"].enabled = false
    data.raw.recipe["solar-panel-equipment"].enabled = false
    data.raw.recipe["night-vision-equipment"].enabled = false
    data.raw.recipe["belt-immunity-equipment"].enabled = false
    data.raw.recipe["energy-shield-equipment"].enabled = false
    data.raw.recipe["fission-reactor-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk2-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk2-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment"].enabled = false

--Hidden
    data.raw.technology["fission-reactor-equipment"].hidden = true
    data.raw.technology["energy-shield-equipment"].hidden = true
    data.raw.technology["night-vision-equipment"].hidden = true
    data.raw.technology["energy-shield-mk2-equipment"].hidden = true
    data.raw.technology["exoskeleton-equipment"].hidden = true
    data.raw.technology["belt-immunity-equipment"].hidden = true
    data.raw.technology["battery-equipment"].hidden = true
    data.raw.technology["battery-mk2-equipment"].hidden = true
    data.raw.technology["solar-panel-equipment"].hidden = true
    data.raw.technology["personal-roboport-equipment"].hidden = true
    data.raw.technology["personal-roboport-mk2-equipment"].hidden = true
    data.raw.technology["personal-laser-defense-equipment"].hidden = true

    data.raw.recipe["energy-shield-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk2-equipment"].hidden = true
    data.raw.recipe["fission-reactor-equipment"].hidden = true
    data.raw.recipe["night-vision-equipment"].hidden = true
    data.raw.recipe["battery-equipment"].hidden = true
    data.raw.recipe["battery-mk2-equipment"].hidden = true
    data.raw.recipe["belt-immunity-equipment"].hidden = true
    data.raw.recipe["exoskeleton-equipment"].hidden = true
    data.raw.recipe["solar-panel-equipment"].hidden = true
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk2-equipment"].hidden = true

if settings.startup["vanilla-filters"].value then
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
    Hide_Item("fusion-reactor-equipment")
    Hide_Item("personal-roboport-equipment")
    Hide_Item("energy-shield-mk2-equipment")
    Hide_Item("personal-roboport-mk2-equipment")
    Hide_Item("personal-laser-defense-equipment")
end

if mods["bobwarfare"] then
--Enabled
    data.raw.recipe["bob-power-armor-mk3"].enabled = false
    data.raw.recipe["bob-power-armor-mk4"].enabled = false
    data.raw.recipe["bob-power-armor-mk5"].enabled = false

    data.raw.technology["bob-power-armor-3"].enabled = false
    data.raw.technology["bob-power-armor-4"].enabled = false
    data.raw.technology["bob-power-armor-5"].enabled = false

--Hidden
    data.raw.recipe["bob-power-armor-mk3"].hidden = true
    data.raw.recipe["bob-power-armor-mk4"].hidden = true
    data.raw.recipe["bob-power-armor-mk5"].hidden = true

    data.raw.technology["bob-power-armor-3"].hidden = true
    data.raw.technology["bob-power-armor-4"].hidden = true
    data.raw.technology["bob-power-armor-5"].hidden = true

    if settings.startup["BobW-filters"].value then
        Hide_Item("bob-power-armor-mk3")
        Hide_Item("bob-power-armor-mk4")
        Hide_Item("bob-power-armor-mk5")
    end
end

if mods["bobequipment"] then
--Enabled
    data.raw.technology["bob-battery-equipment-3"].enabled = false
    data.raw.technology["bob-battery-equipment-4"].enabled = false
    data.raw.technology["bob-battery-equipment-5"].enabled = false
    data.raw.technology["bob-battery-equipment-6"].enabled = false
    data.raw.technology["exoskeleton-equipment-2"].enabled = false
    data.raw.technology["exoskeleton-equipment-3"].enabled = false
    data.raw.technology["solar-panel-equipment-2"].enabled = false
    data.raw.technology["solar-panel-equipment-3"].enabled = false
    data.raw.technology["solar-panel-equipment-4"].enabled = false
    data.raw.technology["night-vision-equipment-2"].enabled = false
    data.raw.technology["night-vision-equipment-3"].enabled = false
    data.raw.technology["fusion-reactor-equipment-2"].enabled = false
    data.raw.technology["fusion-reactor-equipment-3"].enabled = false
    data.raw.technology["fusion-reactor-equipment-4"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-3"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-4"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-5"].enabled = false
    data.raw.technology["bob-energy-shield-equipment-6"].enabled = false
    data.raw.technology["personal-roboport-mk3-equipment"].enabled = false
    data.raw.technology["personal-roboport-mk4-equipment"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-2"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-3"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-4"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-5"].enabled = false
    data.raw.technology["personal-laser-defense-equipment-6"].enabled = false

    data.raw.recipe["battery-mk3-equipment"].enabled = false
    data.raw.recipe["battery-mk4-equipment"].enabled = false
    data.raw.recipe["battery-mk5-equipment"].enabled = false
    data.raw.recipe["battery-mk6-equipment"].enabled = false
    data.raw.recipe["exoskeleton-equipment-2"].enabled = false
    data.raw.recipe["exoskeleton-equipment-3"].enabled = false
    data.raw.recipe["solar-panel-equipment-2"].enabled = false
    data.raw.recipe["solar-panel-equipment-3"].enabled = false
    data.raw.recipe["solar-panel-equipment-4"].enabled = false
    data.raw.recipe["night-vision-equipment-2"].enabled = false
    data.raw.recipe["night-vision-equipment-3"].enabled = false
    data.raw.recipe["fusion-reactor-equipment-2"].enabled = false
    data.raw.recipe["fusion-reactor-equipment-3"].enabled = false
    data.raw.recipe["fusion-reactor-equipment-4"].enabled = false
    data.raw.recipe["energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk4-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk5-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk6-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk3-equipment"].enabled = false
    data.raw.recipe["personal-roboport-mk4-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-2"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-3"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-4"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-5"].enabled = false
    data.raw.recipe["personal-laser-defense-equipment-6"].enabled = false

--Hidden
    data.raw.technology["bob-battery-equipment-3"].hidden = true
    data.raw.technology["bob-battery-equipment-4"].hidden = true
    data.raw.technology["bob-battery-equipment-5"].hidden = true
    data.raw.technology["bob-battery-equipment-6"].hidden = true
    data.raw.technology["solar-panel-equipment-2"].hidden = true
    data.raw.technology["solar-panel-equipment-3"].hidden = true
    data.raw.technology["solar-panel-equipment-4"].hidden = true
    data.raw.technology["exoskeleton-equipment-2"].hidden = true
    data.raw.technology["exoskeleton-equipment-3"].hidden = true
    data.raw.technology["night-vision-equipment-2"].hidden = true
    data.raw.technology["night-vision-equipment-3"].hidden = true
    data.raw.technology["fusion-reactor-equipment-2"].hidden = true
    data.raw.technology["fusion-reactor-equipment-3"].hidden = true
    data.raw.technology["fusion-reactor-equipment-4"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-3"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-4"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-5"].hidden = true
    data.raw.technology["bob-energy-shield-equipment-6"].hidden = true
    data.raw.technology["personal-roboport-mk3-equipment"].hidden = true
    data.raw.technology["personal-roboport-mk4-equipment"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-2"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-3"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-4"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-5"].hidden = true
    data.raw.technology["personal-laser-defense-equipment-6"].hidden = true

    data.raw.recipe["battery-mk3-equipment"].hidden = true
    data.raw.recipe["battery-mk4-equipment"].hidden = true
    data.raw.recipe["battery-mk5-equipment"].hidden = true
    data.raw.recipe["battery-mk6-equipment"].hidden = true
    data.raw.recipe["solar-panel-equipment-2"].hidden = true
    data.raw.recipe["solar-panel-equipment-3"].hidden = true
    data.raw.recipe["solar-panel-equipment-4"].hidden = true
    data.raw.recipe["exoskeleton-equipment-2"].hidden = true
    data.raw.recipe["exoskeleton-equipment-3"].hidden = true
    data.raw.recipe["night-vision-equipment-2"].hidden = true
    data.raw.recipe["night-vision-equipment-3"].hidden = true
    data.raw.recipe["fusion-reactor-equipment-2"].hidden = true
    data.raw.recipe["fusion-reactor-equipment-3"].hidden = true
    data.raw.recipe["fusion-reactor-equipment-4"].hidden = true
    data.raw.recipe["energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk4-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk5-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk6-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk3-equipment"].hidden = true
    data.raw.recipe["personal-roboport-mk4-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-2"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-3"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-4"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-5"].hidden = true
    data.raw.recipe["personal-laser-defense-equipment-6"].hidden = true

    if settings.startup["BobE-filters"].value then
        Hide_Item("battery-mk3-equipment")
        Hide_Item("battery-mk4-equipment")
        Hide_Item("battery-mk5-equipment")
        Hide_Item("battery-mk6-equipment")
        Hide_Item("solar-panel-equipment-2")
        Hide_Item("solar-panel-equipment-3")
        Hide_Item("solar-panel-equipment-4")
        Hide_Item("exoskeleton-equipment-2")
        Hide_Item("exoskeleton-equipment-3")
        Hide_Item("night-vision-equipment-2")
        Hide_Item("night-vision-equipment-3")
        Hide_Item("fusion-reactor-equipment-2")
        Hide_Item("fusion-reactor-equipment-3")
        Hide_Item("fusion-reactor-equipment-4")
        Hide_Item("energy-shield-mk3-equipment")
        Hide_Item("energy-shield-mk4-equipment")
        Hide_Item("energy-shield-mk5-equipment")
        Hide_Item("energy-shield-mk6-equipment")
        Hide_Item("personal-roboport-mk3-equipment")
        Hide_Item("personal-roboport-mk4-equipment")
        Hide_Item("personal-laser-defense-equipment-2")
        Hide_Item("personal-laser-defense-equipment-3")
        Hide_Item("personal-laser-defense-equipment-4")
        Hide_Item("personal-laser-defense-equipment-5")
        Hide_Item("personal-laser-defense-equipment-6")
    end
end

if mods["custom_power_armor_fix"] then
    --Enabled
    data.raw.recipe["shield-mk3"].enabled = false
    data.raw.recipe["shield-mk4"].enabled = false
    data.raw.recipe["energy-cell"].enabled = false
    data.raw.recipe["train-shield"].enabled = false
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.recipe["power-armor-mk5"].enabled = false
    data.raw.recipe["mk2-fast-exoskeleton"].enabled = false
    data.raw.recipe["mk2-heavy-exoskeleton"].enabled = false
    data.raw.recipe["overcharged-fusion-reactor"].enabled = false

    data.raw.technology["shield-mk3"].enabled = false
    data.raw.technology["shield-mk4"].enabled = false
    data.raw.technology["energy-cell"].enabled = false
    data.raw.technology["train-shield"].enabled = false
    data.raw.technology["power-armor-mk4"].enabled = false
    data.raw.technology["power-armor-mk3"].enabled = false
    data.raw.technology["power-armor-mk5"].enabled = false
    data.raw.technology["mk2-fast-exoskeleton"].enabled = false
    data.raw.technology["mk2-heavy-exoskeleton"].enabled = false
    data.raw.technology["overcharged-fusion-reactor"].enabled = false

    --Hidden
    data.raw.recipe["shield-mk3"].hidden = true
    data.raw.recipe["shield-mk4"].hidden = true
    data.raw.recipe["energy-cell"].hidden = true
    data.raw.recipe["train-shield"].hidden = true
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.recipe["power-armor-mk5"].hidden = true
    data.raw.recipe["mk2-fast-exoskeleton"].hidden = true
    data.raw.recipe["mk2-heavy-exoskeleton"].hidden = true
    data.raw.recipe["overcharged-fusion-reactor"].hidden = true

    data.raw.technology["shield-mk3"].hidden = true
    data.raw.technology["shield-mk4"].hidden = true
    data.raw.technology["energy-cell"].hidden = true
    data.raw.technology["train-shield"].hidden = true
    data.raw.technology["power-armor-mk3"].hidden = true
    data.raw.technology["power-armor-mk4"].hidden = true
    data.raw.technology["power-armor-mk5"].hidden = true
    data.raw.technology["mk2-fast-exoskeleton"].hidden = true
    data.raw.technology["mk2-heavy-exoskeleton"].hidden = true
    data.raw.technology["overcharged-fusion-reactor"].hidden = true
    --Filter
    if settings.startup["CPAF-filters"].value then
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
    data.raw.technology["battery-mk3-equipment"].enabled = false
    data.raw.technology["battery-mk4-equipment"].enabled = false
    data.raw.technology["terra-tech-power-armor-tech"].enabled = false
    data.raw.technology["energy-shield-mk3-equipment"].enabled = false
    data.raw.technology["advanced-exoskeleton-equipment"].enabled = false
    data.raw.technology["terra-tech-power-armor-mk2-tech"].enabled = false

    data.raw.recipe["battery-mk3"].enabled = false
    data.raw.recipe["battery-mk4"].enabled = false
    data.raw.recipe["terra-tech-power-armor"].enabled = false
    data.raw.recipe["terra-tech-power-armor-mk2"].enabled = false
    data.raw.recipe["advanced-exoskeleton-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment-mk2"].enabled = false
    data.raw.recipe["large-personal-roboport-equipment"].enabled = false
--Hidden
    data.raw.technology["battery-mk3-equipment"].hidden = true
    data.raw.technology["battery-mk4-equipment"].hidden = true
    data.raw.technology["terra-tech-power-armor-tech"].hidden = true
    data.raw.technology["energy-shield-mk3-equipment"].hidden = true
    data.raw.technology["advanced-exoskeleton-equipment"].hidden = true
    data.raw.technology["terra-tech-power-armor-mk2-tech"].hidden = true

    data.raw.recipe["battery-mk3"].hidden = true
    data.raw.recipe["battery-mk4"].hidden = true
    data.raw.recipe["terra-tech-power-armor"].hidden = true
    data.raw.recipe["terra-tech-power-armor-mk2"].hidden = true
    data.raw.recipe["advanced-exoskeleton-equipment"].hidden = true
    data.raw.recipe["personal-roboport-equipment-mk2"].hidden = true
    data.raw.recipe["large-personal-roboport-equipment"].hidden = true

    if settings.startup["darkstar-fixed-filters"].value then
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
    data.raw.recipe["hsmd-power-armor-mk3"].hidden = true
    data.raw.recipe["hsmd-power-armor-mk4"].hidden = true
    data.raw.recipe["hsmd-solar-panel-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-energy-shield-mk2s-equipment"].hidden = true
    data.raw.recipe["hsmd-battery-mk2-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-exoskeleton-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-roboport-mk2s-equipment"].hidden = true
    data.raw.recipe["hsmd-night-vision-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-laser-defense-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s9-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s8-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s7-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s6-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s5-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s4-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s3-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s2-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-personal-bugzapper-equipment"].hidden = true
    data.raw.recipe["hsmd-fusion-reactor-s1-equipment"].hidden = true
    data.raw.recipe["hsmd-fusion-reactor-s2-equipment"].hidden = true
    data.raw.recipe["hsmd-fusion-reactor-s3-equipment"].hidden = true
    data.raw.recipe["hsmd-stacked-battery"].hidden = true
    data.raw.recipe["hsmd-stacked-solar"].hidden = true
    data.raw.recipe["hsmd-miniaturizer"].hidden = true
    data.raw.recipe["hsmd-solvant"].hidden = true
    data.raw.recipe["hsmd-boxed-gravitanium"].hidden = true
    data.raw.recipe["hsmd-powdered-gravitanium"].hidden = true
    data.raw.recipe["hsmd-cleaned-gravitanium"].hidden = true
    data.raw.recipe["hsmd-gravitanium-plate"].hidden = true
    data.raw.recipe["hsmd-gravitanium-ore"].hidden = true
    data.raw.recipe["hsmd-mixed-ore"].hidden = true

    data.raw.technology["hsmd-power-armor-mk3"].hidden = true
    data.raw.technology["hsmd-power-armor-mk4"].hidden = true
    data.raw.technology["hsmd-personal-bugzapper-equipment"].hidden = true
    data.raw.technology["hsmd-personal-bugzapper-equipment-2"].hidden = true
    data.raw.technology["hsmd-personal-bugzapper-equipment-3"].hidden = true
    data.raw.technology["hsmd-personal-bugzapper-equipment-4"].hidden = true
    data.raw.technology["hsmd-miniaturization-1"].hidden = true
    data.raw.technology["hsmd-miniaturization-2"].hidden = true
    data.raw.technology["hsmd-miniaturization-3"].hidden = true
    data.raw.technology["hsmd-miniaturization-4"].hidden = true
    data.raw.technology["hsmd-miniaturization-5"].hidden = true
    data.raw.technology["hsmd-miniaturization-6"].hidden = true
    data.raw.technology["hsmd-miniaturization-7"].hidden = true

--Enabled
    data.raw.recipe["hsmd-power-armor-mk3"].enabled = false
    data.raw.recipe["hsmd-power-armor-mk4"].enabled = false
    data.raw.recipe["hsmd-solar-panel-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-energy-shield-mk2s-equipment"].enabled = false
    data.raw.recipe["hsmd-battery-mk2-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-exoskeleton-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-roboport-mk2s-equipment"].enabled = false
    data.raw.recipe["hsmd-night-vision-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-laser-defense-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s9-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s8-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s7-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s6-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s5-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s4-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s3-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s2-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-personal-bugzapper-equipment"].enabled = false
    data.raw.recipe["hsmd-fusion-reactor-s1-equipment"].enabled = false
    data.raw.recipe["hsmd-fusion-reactor-s2-equipment"].enabled = false
    data.raw.recipe["hsmd-fusion-reactor-s3-equipment"].enabled = false
    data.raw.recipe["hsmd-stacked-battery"].enabled = false
    data.raw.recipe["hsmd-stacked-solar"].enabled = false
    data.raw.recipe["hsmd-miniaturizer"].enabled = false
    data.raw.recipe["hsmd-solvant"].enabled = false
    data.raw.recipe["hsmd-boxed-gravitanium"].enabled = false
    data.raw.recipe["hsmd-powdered-gravitanium"].enabled = false
    data.raw.recipe["hsmd-cleaned-gravitanium"].enabled = false
    data.raw.recipe["hsmd-gravitanium-plate"].enabled = false
    data.raw.recipe["hsmd-gravitanium-ore"].enabled = false
    data.raw.recipe["hsmd-mixed-ore"].enabled = false

    data.raw.technology["hsmd-power-armor-mk3"].enabled = false
    data.raw.technology["hsmd-power-armor-mk4"].enabled = false
    data.raw.technology["hsmd-personal-bugzapper-equipment"].enabled = false
    data.raw.technology["hsmd-personal-bugzapper-equipment-2"].enabled = false
    data.raw.technology["hsmd-personal-bugzapper-equipment-3"].enabled = false
    data.raw.technology["hsmd-personal-bugzapper-equipment-4"].enabled = false
    data.raw.technology["hsmd-miniaturization-1"].enabled = false
    data.raw.technology["hsmd-miniaturization-2"].enabled = false
    data.raw.technology["hsmd-miniaturization-3"].enabled = false
    data.raw.technology["hsmd-miniaturization-4"].enabled = false
    data.raw.technology["hsmd-miniaturization-5"].enabled = false
    data.raw.technology["hsmd-miniaturization-6"].enabled = false
    data.raw.technology["hsmd-miniaturization-7"].enabled = false

    if settings.startup["hl_gear-filters"].value then
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
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.recipe["portable-generator"].hidden = true
    data.raw.recipe["additional-engine"].hidden = true
    data.raw.recipe["small-portable-generator"].hidden = true
    data.raw.recipe["big-solar-panel-equipment"].hidden = true
    data.raw.recipe["big-battery-equipment"].hidden = true
    data.raw.recipe["advanced-additional-engine"].hidden = true
    data.raw.recipe["nuclear-reactor-equipment"].hidden = true
    data.raw.recipe["antimatter-reactor-equipment"].hidden = true
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["advanced-exoskeleton-equipment"].hidden = true
    data.raw.recipe["superior-exoskeleton-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk4-equipment"].hidden = true
    data.raw.recipe["personal-submachine-laser-defense-mk1-equipment"].hidden = true

    data.raw.technology["kr-power-armor-mk3"].hidden = true
    data.raw.technology["kr-power-armor-mk4"].hidden = true
    data.raw.technology["kr-portable-generator"].hidden = true
    data.raw.technology["kr-battery-mk3-equipment"].hidden = true
    data.raw.technology["kr-nuclear-reactor-equipment"].hidden = true
    data.raw.technology["kr-advanced-additional-engine"].hidden = true
    data.raw.technology["kr-antimatter-reactor-equipment"].hidden = true
    data.raw.technology["kr-advanced-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-superior-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-imersite-solar-panel-equipment"].hidden = true
    data.raw.technology["kr-imersite-night-vision-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].hidden = true

--Enabled
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.recipe["additional-engine"].enabled = false
    data.raw.recipe["portable-generator"].enabled = false
    data.raw.recipe["small-portable-generator"].enabled = false
    data.raw.recipe["big-battery-equipment"].enabled = false
    data.raw.recipe["big-solar-panel-equipment"].enabled = false
    data.raw.recipe["nuclear-reactor-equipment"].enabled = false
    data.raw.recipe["advanced-additional-engine"].enabled = false
    data.raw.recipe["antimatter-reactor-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["advanced-exoskeleton-equipment"].enabled = false
    data.raw.recipe["superior-exoskeleton-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk4-equipment"].enabled = false
    data.raw.recipe["personal-submachine-laser-defense-mk1-equipment"].enabled = false

    data.raw.technology["kr-power-armor-mk3"].enabled = false
    data.raw.technology["kr-power-armor-mk4"].enabled = false
    data.raw.technology["battery-equipment"].enabled = false
    data.raw.technology["kr-portable-generator"].enabled = false
    data.raw.technology["kr-battery-mk3-equipment"].enabled = false
    data.raw.technology["kr-nuclear-reactor-equipment"].enabled = false
    data.raw.technology["kr-advanced-additional-engine"].enabled = false
    data.raw.technology["kr-antimatter-reactor-equipment"].enabled = false
    data.raw.technology["kr-imersite-solar-panel-equipment"].enabled = false
    data.raw.technology["kr-imersite-night-vision-equipment"].enabled = false
    data.raw.technology["kr-advanced-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-superior-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].enabled = false

    if settings.startup["KE-filters"].value then
        Hide_Item("power-armor-mk3")
        Hide_Item("power-armor-mk4")
        Hide_Item("portable-generator")
        Hide_Item("small-portable-generator")
        Hide_Item("big-solar-panel-equipment")
        Hide_Item("imersite-solar-panel-equipment")
        Hide_Item("big-imersite-solar-panel-equipment")
        Hide_Item("nuclear-reactor-equipment")
        Hide_Item("antimatter-reactor-equipment")
        Hide_Item("big-battery-equipment")
        Hide_Item("battery-mk2-equipment")
        Hide_Item("big-battery-mk2-equipment")
        Hide_Item("battery-mk3-equipment")
        Hide_Item("big-battery-mk3-equipment")
        Hide_Item("superior-exoskeleton-equipment")
        Hide_Item("advanced-exoskeleton-equipment")
        Hide_Item("imersite-night-vision-equipment")
        Hide_Item("personal-laser-defense-mk2-equipment")
        Hide_Item("personal-laser-defense-mk3-equipment")
        Hide_Item("personal-laser-defense-mk4-equipment")
        Hide_Item("personal-submachine-laser-defense-mk1-equipment")
        Hide_Item("personal-submachine-laser-defense-mk2-equipment")
        Hide_Item("personal-submachine-laser-defense-mk3-equipment")
        Hide_Item("personal-submachine-laser-defense-mk4-equipment")
    end
elseif mods["Krastorio2"] then
--Hidden
    data.raw.recipe["power-armor-mk3"].hidden = true
    data.raw.recipe["power-armor-mk4"].hidden = true
    data.raw.recipe["additional-engine"].hidden = true
    data.raw.recipe["portable-generator"].hidden = true
    data.raw.recipe["big-battery-equipment"].hidden = true
    data.raw.recipe["small-portable-generator"].hidden = true
    data.raw.recipe["big-solar-panel-equipment"].hidden = true
    data.raw.recipe["nuclear-reactor-equipment"].hidden = true
    data.raw.recipe["advanced-additional-engine"].hidden = true
    data.raw.recipe["personal-roboport-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk4-equipment"].hidden = true
    data.raw.recipe["antimatter-reactor-equipment"].hidden = true
    data.raw.recipe["imersite-solar-panel-equipment"].hidden = true
    data.raw.recipe["big-imersite-solar-panel-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.recipe["personal-laser-defense-mk4-equipment"].hidden = true
    data.raw.recipe["personal-submachine-laser-defense-mk1-equipment"].hidden = true
    data.raw.recipe["personal-submachine-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["personal-submachine-laser-defense-mk3-equipment"].hidden = true
    data.raw.recipe["personal-submachine-laser-defense-mk4-equipment"].hidden = true

    data.raw.technology["kr-power-armor-mk3"].hidden = true
    data.raw.technology["kr-power-armor-mk4"].hidden = true
    data.raw.technology["kr-portable-generator"].hidden = true
    data.raw.technology["kr-battery-mk3-equipment"].hidden = true
    data.raw.technology["kr-nuclear-reactor-equipment"].hidden = true
    data.raw.technology["kr-antimatter-reactor-equipment"].hidden = true
    data.raw.technology["kr-advanced-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-superior-exoskeleton-equipment"].hidden = true
    data.raw.technology["kr-imersite-night-vision-equipment"].hidden = true
    data.raw.technology["kr-energy-shield-mk3-equipment"].hidden = true
    data.raw.technology["kr-energy-shield-mk4-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].hidden = true
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].hidden = true
    data.raw.technology["kr-advanced-additional-engine"].hidden = true

--Enabled
    data.raw.recipe["power-armor-mk3"].enabled = false
    data.raw.recipe["power-armor-mk4"].enabled = false
    data.raw.recipe["additional-engine"].enabled = false
    data.raw.recipe["portable-generator"].enabled = false
    data.raw.recipe["small-portable-generator"].enabled = false
    data.raw.recipe["big-solar-panel-equipment"].enabled = false
    data.raw.recipe["big-battery-equipment"].enabled = false
    data.raw.recipe["advanced-additional-engine"].enabled = false
    data.raw.recipe["nuclear-reactor-equipment"].enabled = false
    data.raw.recipe["antimatter-reactor-equipment"].enabled = false
    data.raw.recipe["personal-roboport-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk4-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.recipe["personal-laser-defense-mk4-equipment"].enabled = false
    data.raw.recipe["personal-submachine-laser-defense-mk1-equipment"].enabled = false
    data.raw.recipe["personal-submachine-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["personal-submachine-laser-defense-mk3-equipment"].enabled = false
    data.raw.recipe["personal-submachine-laser-defense-mk4-equipment"].enabled = false

    data.raw.technology["kr-power-armor-mk3"].enabled = false
    data.raw.technology["kr-power-armor-mk4"].enabled = false
    data.raw.technology["kr-portable-generator"].enabled = false
    data.raw.technology["kr-battery-mk3-equipment"].enabled = false
    data.raw.technology["kr-nuclear-reactor-equipment"].enabled = false
    data.raw.technology["kr-antimatter-reactor-equipment"].enabled = false
    data.raw.technology["kr-energy-shield-mk3-equipment"].enabled = false
    data.raw.technology["kr-energy-shield-mk4-equipment"].enabled = false
    data.raw.technology["kr-advanced-additional-engine"].enabled = false
    data.raw.technology["kr-imersite-solar-panel-equipment"].enabled = false
    data.raw.technology["kr-imersite-night-vision-equipment"].enabled = false
    data.raw.technology["kr-advanced-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-superior-exoskeleton-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk3-equipment"].enabled = false
    data.raw.technology["kr-personal-laser-defense-mk4-equipment"].enabled = false

    if settings.startup["K2-filters"].value then
        Hide_Item("power-armor-mk3")
        Hide_Item("power-armor-mk4")
        Hide_Item("portable-generator")
        Hide_Item("small-portable-generator")
        Hide_Item("big-solar-panel-equipment")
        Hide_Item("imersite-solar-panel-equipment")
        Hide_Item("big-imersite-solar-panel-equipment")
        Hide_Item("nuclear-reactor-equipment")
        Hide_Item("antimatter-reactor-equipment")
        Hide_Item("big-battery-equipment")
        Hide_Item("battery-mk2-equipment")
        Hide_Item("big-battery-mk2-equipment")
        Hide_Item("battery-mk3-equipment")
        Hide_Item("big-battery-mk3-equipment")
        Hide_Item("energy-shield-mk3-equipment")
        Hide_Item("energy-shield-mk4-equipment")
        Hide_Item("superior-exoskeleton-equipment")
        Hide_Item("advanced-exoskeleton-equipment")
        Hide_Item("imersite-night-vision-equipment")
        Hide_Item("personal-laser-defense-mk2-equipment")
        Hide_Item("personal-laser-defense-mk3-equipment")
        Hide_Item("personal-laser-defense-mk4-equipment")
        Hide_Item("personal-submachine-laser-defense-mk1-equipment")
        Hide_Item("personal-submachine-laser-defense-mk2-equipment")
        Hide_Item("personal-submachine-laser-defense-mk3-equipment")
        Hide_Item("personal-submachine-laser-defense-mk4-equipment")
    end
end

if mods["RampantArsenal"] then
-- Enabled 
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].enabled = false
    data.raw.technology["rampant-arsenal-technology-battery-equipment-3"].enabled = false
    data.raw.technology["rampant-arsenal-technology-shield-equipment-2"].enabled = false
    data.raw.technology["rampant-arsenal-technology-generator-equipment-2"].enabled = false
    data.raw.technology["rampant-arsenal-technology-generator-equipment-3"].enabled = false

    data.raw.recipe["mk3-battery-rampant-arsenal"].enabled = false
    data.raw.recipe["mk3-shield-rampant-arsenal"].enabled = false
    data.raw.recipe["mk3-generator-rampant-arsenal"].enabled = false
    data.raw.recipe["nuclear-generator-rampant-arsenal"].enabled = false
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].enabled = false

-- Hidden        
    data.raw.technology["rampant-arsenal-technology-power-armor-mk3"].hidden = true
    data.raw.technology["rampant-arsenal-technology-battery-equipment-3"].hidden = true
    data.raw.technology["rampant-arsenal-technology-shield-equipment-2"].hidden = true
    data.raw.technology["rampant-arsenal-technology-generator-equipment-2"].hidden = true
    data.raw.technology["rampant-arsenal-technology-generator-equipment-3"].hidden = true

    data.raw.recipe["mk3-shield-rampant-arsenal"].hidden = true
    data.raw.recipe["mk3-battery-rampant-arsenal"].hidden = true
    data.raw.recipe["mk3-generator-rampant-arsenal"].hidden = true
    data.raw.recipe["nuclear-generator-rampant-arsenal"].hidden = true
    data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"].hidden = true

    if settings.startup["Arsenal-filters"].value then
        Hide_Item("mk3-shield-rampant-arsenal")
        Hide_Item("mk3-battery-rampant-arsenal")
        Hide_Item("mk3-generator-rampant-arsenal")
        Hide_Item("nuclear-generator-rampant-arsenal")
        Hide_Item("power-armor-mk3-armor-rampant-arsenal")
    end
end

if mods["space-exploration"] then
--Enabled
    data.raw.recipe["se-rtg-equipment"].enabled = false
    data.raw.recipe["se-rtg-equipment-2"].enabled = false
    data.raw.recipe["energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk4-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk5-equipment"].enabled = false
    data.raw.recipe["energy-shield-mk6-equipment"].enabled = false
    data.raw.recipe["se-adaptive-armour-equipment-1"].enabled = false
    data.raw.recipe["se-adaptive-armour-equipment-2"].enabled = false
    data.raw.recipe["se-adaptive-armour-equipment-3"].enabled = false
    data.raw.recipe["se-adaptive-armour-equipment-4"].enabled = false
    data.raw.recipe["se-adaptive-armour-equipment-5"].enabled = false

    data.raw.technology["se-rtg-equipment"].enabled = false
    data.raw.technology["se-rtg-equipment-2"].enabled = false
    data.raw.technology["se-adaptive-armour-1"].enabled = false
    data.raw.technology["se-adaptive-armour-2"].enabled = false
    data.raw.technology["se-adaptive-armour-3"].enabled = false
    data.raw.technology["se-adaptive-armour-4"].enabled = false
    data.raw.technology["se-adaptive-armour-5"].enabled = false
    data.raw.technology["energy-shield-mk3-equipment"].enabled = false
    data.raw.technology["energy-shield-mk4-equipment"].enabled = false
    data.raw.technology["energy-shield-mk5-equipment"].enabled = false
    data.raw.technology["energy-shield-mk6-equipment"].enabled = false

--Hidden
    data.raw.recipe["se-rtg-equipment"].hidden = true
    data.raw.recipe["se-rtg-equipment-2"].hidden = true
    data.raw.recipe["energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk4-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk5-equipment"].hidden = true
    data.raw.recipe["energy-shield-mk6-equipment"].hidden = true
    data.raw.recipe["se-adaptive-armour-equipment-1"].hidden = true
    data.raw.recipe["se-adaptive-armour-equipment-2"].hidden = true
    data.raw.recipe["se-adaptive-armour-equipment-3"].hidden = true
    data.raw.recipe["se-adaptive-armour-equipment-4"].hidden = true
    data.raw.recipe["se-adaptive-armour-equipment-5"].hidden = true

    data.raw.technology["se-rtg-equipment"].hidden = true
    data.raw.technology["se-rtg-equipment-2"].hidden = true
    data.raw.technology["se-adaptive-armour-1"].hidden = true
    data.raw.technology["se-adaptive-armour-2"].hidden = true
    data.raw.technology["se-adaptive-armour-3"].hidden = true
    data.raw.technology["se-adaptive-armour-4"].hidden = true
    data.raw.technology["se-adaptive-armour-5"].hidden = true
    data.raw.technology["energy-shield-mk3-equipment"].hidden = true
    data.raw.technology["energy-shield-mk4-equipment"].hidden = true
    data.raw.technology["energy-shield-mk5-equipment"].hidden = true
    data.raw.technology["energy-shield-mk6-equipment"].hidden = true

    if settings.startup["SE-filters"].value then
        Hide_Item("se-rtg-equipment")
        Hide_Item("se-rtg-equipment-2")
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

if mods["Power Armor MK3"] then
    --Hidden
    data.raw.recipe["pamk3-se"].hidden = true
    data.raw.recipe["pamk3-pnr"].hidden = true
    data.raw.recipe["pamk3-inff"].hidden = true
    data.raw.recipe["pamk3-nvmk2"].hidden = true
    data.raw.recipe["pamk3-esmk3"].hidden = true
    data.raw.recipe["pamk3-pamk3"].hidden = true
    data.raw.recipe["pamk3-pamk4"].hidden = true
    data.raw.recipe["pamk3-battmk3"].hidden = true

    data.raw.technology["pamk3-se"].hidden = true
    data.raw.technology["pamk3-pnr"].hidden = true
    data.raw.technology["pamk3-nvmk2"].hidden = true
    data.raw.technology["pamk3-esmk3"].hidden = true
    data.raw.technology["pamk3-pamk3"].hidden = true
    data.raw.technology["pamk3-pamk4"].hidden = true
    data.raw.technology["pamk3-battmk3"].hidden = true
--Enabled
    data.raw.recipe["pamk3-se"].enabled = false
    data.raw.recipe["pamk3-pnr"].enabled = false
    data.raw.recipe["pamk3-inff"].enabled = false
    data.raw.recipe["pamk3-nvmk2"].enabled = false
    data.raw.recipe["pamk3-esmk3"].enabled = false
    data.raw.recipe["pamk3-pamk3"].enabled = false
    data.raw.recipe["pamk3-pamk4"].enabled = false
    data.raw.recipe["pamk3-battmk3"].enabled = false

    data.raw.technology["pamk3-se"].enabled = false
    data.raw.technology["pamk3-pnr"].enabled = false
    data.raw.technology["pamk3-pnr"].enabled = false
    data.raw.technology["pamk3-nvmk2"].enabled = false
    data.raw.technology["pamk3-esmk3"].enabled = false
    data.raw.technology["pamk3-pamk3"].enabled = false
    data.raw.technology["pamk3-pamk4"].enabled = false
    data.raw.technology["pamk3-battmk3"].enabled = false
    --Filters
    if settings.startup["MK3-filters"].value then
        Hide_Item("pamk3-se")
        Hide_Item("pamk3-pnr")
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
    data.raw.recipe["PaA-battery-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-power-armor-mk2-upgrade"].enabled = false
    data.raw.recipe["PaA-power-armor-mk3-upgrade"].enabled = false
    data.raw.recipe["PaA-exoskeleton-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-night-vision-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-energy-shield-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-par-fusion-reactor-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-personal-roboport-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-personal-dockingport-mk3-equipment"].enabled = false
    data.raw.recipe["PaA-personal-laser-defense-mk2-equipment"].enabled = false
    data.raw.recipe["PaA-personal-laser-defense-mk3-equipment"].enabled = false

    data.raw.technology["PaA-armor-upgrades"].enabled = false
    data.raw.technology["PaA-mk3-power-armor"].enabled = false
    data.raw.technology["PaA-mk4-power-armor"].enabled = false
    data.raw.technology["PaA-mk3-battery-equipment"].enabled = false
    data.raw.technology["PaA-mk2-exoskeleton-equipment"].enabled = false
    data.raw.technology["PaA-mk2-night-vision-equipment"].enabled = false
    data.raw.technology["PaA-mk3-energy-shield-equipment"].enabled = false
    data.raw.technology["PaA-mk2-fusion-reactor-equipment"].enabled = false
    data.raw.technology["PaA-mk3-personal-roboport-equipment"].enabled = false
    data.raw.technology["PaA-mk2-personal-laser-defense-equipment"].enabled = false
    data.raw.technology["PaA-mk3-personal-laser-defense-equipment"].enabled = false
    --Hidden
    data.raw.recipe["PaA-power-armor-mk3"].hidden = true
    data.raw.recipe["PaA-power-armor-mk4"].hidden = true
    data.raw.recipe["PaA-battery-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-power-armor-mk3-upgrade"].hidden = true
    data.raw.recipe["PaA-power-armor-mk2-upgrade"].hidden = true
    data.raw.recipe["PaA-exoskeleton-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-night-vision-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-energy-shield-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-par-fusion-reactor-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-personal-roboport-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-personal-dockingport-mk3-equipment"].hidden = true
    data.raw.recipe["PaA-personal-laser-defense-mk2-equipment"].hidden = true
    data.raw.recipe["PaA-personal-laser-defense-mk3-equipment"].hidden = true

    data.raw.technology["PaA-armor-upgrades"].hidden = true
    data.raw.technology["PaA-mk3-power-armor"].hidden = true
    data.raw.technology["PaA-mk4-power-armor"].hidden = true
    data.raw.technology["PaA-mk3-battery-equipment"].hidden = true
    data.raw.technology["PaA-mk2-exoskeleton-equipment"].hidden = true
    data.raw.technology["PaA-mk2-night-vision-equipment"].hidden = true
    data.raw.technology["PaA-mk3-energy-shield-equipment"].hidden = true
    data.raw.technology["PaA-mk2-fusion-reactor-equipment"].hidden = true
    data.raw.technology["PaA-mk3-personal-roboport-equipment"].hidden = true
    data.raw.technology["PaA-mk2-personal-laser-defense-equipment"].hidden = true
    data.raw.technology["PaA-mk3-personal-laser-defense-equipment"].hidden = true

    --filters
    if settings.startup["PA-filters"].value then
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