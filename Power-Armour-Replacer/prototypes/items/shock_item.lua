local item_sounds = require("__base__.prototypes.item_sounds")
---@class LuaSettings
local SS = settings.startup
local ShockDefence = {
	{automatic =SS["ShockDefencePassiveActive_01"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_01"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_01"].value) .. "GJ", damagemodifier = SS["ShockDamage_01"].value, ShootingCooldown = SS["ShockShootingSpeed_01"].value, shockradius = SS["ShockDefenceRadius_01"].value, range = SS["ShockRange_01"].value, knockback =SS["ShockKnockback_01"].value, weightvalue = SS["ShockWeight_01"].value, order = "ga[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_02"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_02"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_02"].value) .. "GJ", damagemodifier = SS["ShockDamage_02"].value, ShootingCooldown = SS["ShockShootingSpeed_02"].value, shockradius = SS["ShockDefenceRadius_02"].value, range = SS["ShockRange_02"].value, knockback =SS["ShockKnockback_02"].value, weightvalue = SS["ShockWeight_02"].value, order = "gb[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_03"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_03"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_03"].value) .. "GJ", damagemodifier = SS["ShockDamage_03"].value, ShootingCooldown = SS["ShockShootingSpeed_03"].value, shockradius = SS["ShockDefenceRadius_03"].value, range = SS["ShockRange_03"].value, knockback =SS["ShockKnockback_03"].value, weightvalue = SS["ShockWeight_03"].value, order = "gc[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_04"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_04"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_04"].value) .. "GJ", damagemodifier = SS["ShockDamage_04"].value, ShootingCooldown = SS["ShockShootingSpeed_04"].value, shockradius = SS["ShockDefenceRadius_04"].value, range = SS["ShockRange_04"].value, knockback =SS["ShockKnockback_04"].value, weightvalue = SS["ShockWeight_04"].value, order = "gd[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_05"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_05"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_05"].value) .. "GJ", damagemodifier = SS["ShockDamage_05"].value, ShootingCooldown = SS["ShockShootingSpeed_05"].value, shockradius = SS["ShockDefenceRadius_05"].value, range = SS["ShockRange_05"].value, knockback =SS["ShockKnockback_05"].value, weightvalue = SS["ShockWeight_05"].value, order = "ge[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_06"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_06"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_06"].value) .. "GJ", damagemodifier = SS["ShockDamage_06"].value, ShootingCooldown = SS["ShockShootingSpeed_06"].value, shockradius = SS["ShockDefenceRadius_06"].value, range = SS["ShockRange_06"].value, knockback =SS["ShockKnockback_06"].value, weightvalue = SS["ShockWeight_06"].value, order = "gf[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_07"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_07"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_07"].value) .. "GJ", damagemodifier = SS["ShockDamage_07"].value, ShootingCooldown = SS["ShockShootingSpeed_07"].value, shockradius = SS["ShockDefenceRadius_07"].value, range = SS["ShockRange_07"].value, knockback =SS["ShockKnockback_07"].value, weightvalue = SS["ShockWeight_07"].value, order = "gg[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_08"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_08"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_08"].value) .. "GJ", damagemodifier = SS["ShockDamage_08"].value, ShootingCooldown = SS["ShockShootingSpeed_08"].value, shockradius = SS["ShockDefenceRadius_08"].value, range = SS["ShockRange_08"].value, knockback =SS["ShockKnockback_08"].value, weightvalue = SS["ShockWeight_08"].value, order = "gh[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_09"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_09"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_09"].value) .. "GJ", damagemodifier = SS["ShockDamage_09"].value, ShootingCooldown = SS["ShockShootingSpeed_09"].value, shockradius = SS["ShockDefenceRadius_09"].value, range = SS["ShockRange_09"].value, knockback =SS["ShockKnockback_09"].value, weightvalue = SS["ShockWeight_09"].value, order = "gi[pasive-defense]-aa[armour-replacer]"},
	{automatic =SS["ShockDefencePassiveActive_10"].value, shockpowerbuffer = tostring(SS["ShockPowerStorage_10"].value) .. "GJ", powerconsumption = tostring(SS["ShockPowerConsumption_10"].value) .. "GJ", damagemodifier = SS["ShockDamage_10"].value, ShootingCooldown = SS["ShockShootingSpeed_10"].value, shockradius = SS["ShockDefenceRadius_10"].value, range = SS["ShockRange_10"].value, knockback =SS["ShockKnockback_10"].value, weightvalue = SS["ShockWeight_10"].value, order = "gj[pasive-defense]-aa[armour-replacer]"},
}

if (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
    AllowedGrids = {"armor", "kr-vehicle"}
else
    AllowedGrids = {"armor"}
end

for tier, shock in pairs(ShockDefence) do
    ---@type data.ItemPrototype
	local item = {
		type = "item",
		name = "par-shock-defense-mk" .. tostring(tier),
		place_as_equipment_result = "par-shock-defense-mk" .. tostring(tier),
		icon = "__base__/graphics/icons/discharge-defense-equipment.png",
		inventory_move_sound = item_sounds.electric_large_inventory_move,
		pick_sound = item_sounds.electric_large_inventory_pickup,
		drop_sound = item_sounds.electric_large_inventory_move,
        weight = shock.weightvalue,
		order = shock.order,
		subgroup = "PAR_ShockDefence",
		stack_size = 20
	}

---@type data.EquipmentPrototype
	local equipment = {
		type = "active-defense-equipment",
		name = "par-shock-defense-mk" .. tostring(tier),
		sprite = { filename = "__base__/graphics/equipment/discharge-defense-equipment.png", flags = {"icon"}, size = 128, priority = "extra-high-no-scale", scale = 0.5},
		shape = {width = 2, height = 2, type = "full"},
		energy_source = {
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = shock.shockpowerbuffer,
		},
		attack_parameters = {
			type = "projectile",
			ammo_category = "electric",
			damage_modifier = shock.damagemodifier,
			cooldown = shock.ShootingCooldown,
			projectile_center = {0, 0},
			projectile_creation_distance = 0.6,
			range = shock.range,
			sound = {switch_vibration_data = {filename = "__base__/sound/fight/pulse.bnvib"}, game_controller_vibration_data = { low_frequency_vibration_intensity = 0.5, duration = 100}, filename = "__base__/sound/fight/pulse.ogg", volume = 0.7},
			ammo_type = {
				type = "projectile",
				energy_consumption = shock.powerconsumption,
				action = {
					{type = "area", radius = shock.shockradius, force = "enemy",
						action_delivery = {
							{type = "instant",
								target_effects = {
									{type = "create-sticker", sticker = "stun-sticker"},
									{type = "push-back", distance = shock.knockback}
								}
							},
							{type = "beam", beam = "electric-beam-no-sound", max_length = shock.shockradius * 2, duration = 15, source_offset = {0, -0.5}, add_to_shooter = false}
						}
					}
				}
			}
		},
		automatic = shock.automatic,
		categories = AllowedGrids
	}
	data:extend({
        item,
        equipment,
    })
end