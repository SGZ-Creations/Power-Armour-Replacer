local item_sounds = require("__base__.prototypes.item_sounds")
---@class LuaSettings
local SS = settings.startup
local ShockDefence = {
	{weightvalue = SS["ShockWeight_01"].value, order = "ga[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_02"].value, order = "gb[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_03"].value, order = "gc[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_04"].value, order = "gd[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_05"].value, order = "ge[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_06"].value, order = "gf[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_07"].value, order = "gg[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_08"].value, order = "gh[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_09"].value, order = "gi[pasive-defense]-aa[armour-replacer]",},
	{weightvalue = SS["ShockWeight_10"].value, order = "gj[pasive-defense]-aa[armour-replacer]",},
}



for tier, shock in pairs(ShockDefence) do
    ---@type data.ItemPrototype
	local item = {
		type = "item",
		name = "par-shock-defense-mk" .. tostring(tier),
		place_as_equipment_result = "par-shock-defense-mk" ..tostring(tier),
		icon = "__base__/graphics/icons/discharge-defense-equipment.png",
		inventory_move_sound = item_sounds.electric_large_inventory_move,
		pick_sound = item_sounds.electric_large_inventory_pickup,
		drop_sound = item_sounds.electric_large_inventory_move,
        auto_recycle = false,
        weight = shock.weightvalue,
		order = shock.order,
		subgroup = "PAR_ShockDefence",
		stack_size = 20
	}

    ---@type data.EquipmentPrototype
	local equipment = {
		type = "active-defense-equipment",
		name = "discharge-defense-equipment",
		sprite = {
			filename = "__base__/graphics/equipment/discharge-defense-equipment.png",
			flags = { "icon" },
			size = 128,
			priority = "extra-high-no-scale",
			scale = 0.5
		},
		shape = {
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "4040kJ"
		},
		attack_parameters = {
			type = "projectile",
			ammo_category = "electric",
			damage_modifier = 10,
			cooldown = 150,
			projectile_center = {0, 0},
			projectile_creation_distance = 0.6,
			range = 10,
			sound = {
				switch_vibration_data = {filename = "__base__/sound/fight/pulse.bnvib"},
				game_controller_vibration_data = {
					low_frequency_vibration_intensity = 0.5,
					duration = 100
				},
				filename = "__base__/sound/fight/pulse.ogg", volume = 0.7
			},
			ammo_type = {
				type = "projectile",
				energy_consumption = "2MJ",
				action = {
					{ type = "area", radius = 8, force = "enemy",
						action_delivery = {
							{ type = "instant",
								target_effects = {
									{type = "create-sticker", sticker = "stun-sticker"},
									{type = "push-back", distance = 4}
								}
							},
							{ type = "beam", beam = "electric-beam-no-sound", max_length = 16, duration = 15, source_offset = {0, -0.5}, add_to_shooter = false }
						}
					}
				}
			}
		},
		automatic = false,
		categories = {"armor"}
	}

	data:extend({
        item,
        equipment,
    })
end

