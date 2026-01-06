--[[
	dependencies = {""},
	starting_status = "unlocked",
	is_title = true,
	consecutive = false,
------------------------
if mods[""] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_-info",
			category = "power-armour-replacer",
			dependencies = {"par_info"},
			order = "3IA",
			indent = 2,
		},
	})
end

]]
data:extend({
	{
		type = "tips-and-tricks-item-category",
		name = "power-armour-replacer",
		order = "2Z-[Power-Armour-Replacer]",
	},
	{
		type = "tips-and-tricks-item",
		name = "power-armour-replacer",
		category = "power-armour-replacer",
		is_title = true,
		order = "2AA",
		starting_status = "unlocked",
	},
	{
		type = "tips-and-tricks-item",
		name = "par_info",
		category = "power-armour-replacer",
		dependencies = {"par_cas-info"},
		order = "2AC",
		indent = 1,
		trigger = {
			type = "craft-item",
			item = "light-armor",
			event_type = "crafting-finished",
			count = 1,
		},
	},
	{
		type = "tips-and-tricks-item",
		name = "par_base-info",
		category = "power-armour-replacer",
		dependencies = {"par_info"},
		order = "2AB",
		indent = 1,
	},
})

if mods["space-age"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_SpaceAge-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3AA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "mech-armor",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["bobwarfare"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_bobwarfare-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3BA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["bobequipment"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_bobequipment-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3BB",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["Cold_biters"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_ColdBitters-info",
			category = "power-armour-replacer",
			dependencies = {"par_info"},
			order = "3BC",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["custom_power_armor_fix"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_custom_power_armor_fix-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3CA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["metal-and-stars"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_MetalStars-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3DA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "prototype-mech-armor",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end


if mods["Darkstar_utilities_fixed"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_darkstar_utilities_fixed-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3DA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["Hiladdar_Gear"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_hiladdar_gear-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3EA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["Nanobots3"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "Nanobots3-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3FA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "gun-nano-emitter",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["Power Armor MK3"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_power_armor_mk3-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3GA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "pamk3-lvest",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["PowerAndArmor"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_power_and_armor-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3HA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if (mods["RampantArsenal"] or mods["RampantArsenalFork"]) then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_rampant-arsenal-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3IA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end


if mods["Insectitron"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_insectitron-info",
			category = "power-armour-replacer",
			dependencies = {"par_info"},
			order = "3JA",
			indent = 2,
		},
	})
end

if mods["SpaceModFeorasFork"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_space-x-info",
			category = "power-armour-replacer",
			dependencies = {"par_info"},
			order = "3KA",
			indent = 2,
		},
	})
end

if mods["TeleportationEquipment"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_teleportation-equipment-info",
			category = "power-armour-replacer",
			dependencies = {"par_info"},
			order = "3LA",
			indent = 2,
		},
	})
end

if mods["osm-radioactivity"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_osm-radioactivity-info",
			category = "power-armour-replacer",
			dependencies = {"par_info"},
			order = "3MA",
			indent = 2,
		},
	})
end

if mods["space-exploration"] and mods["Krastroio2"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_k2-se-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3ZA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["space-exploration"] and not mods["Krastroio2"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_se-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3ZA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end

if mods["Krastroio2"] and not mods["space-exploration"] then
	data:extend({
		{
			type = "tips-and-tricks-item",
			name = "par_k2-info",
			category = "power-armour-replacer",
			dependencies = {"par_cas-info"},
			order = "3ZA",
			indent = 2,
			trigger = {
				type = "craft-item",
				item = "par-armour-mk1",
				event_type = "crafting-finished",
				count = 1,
			},
		},
	})
end