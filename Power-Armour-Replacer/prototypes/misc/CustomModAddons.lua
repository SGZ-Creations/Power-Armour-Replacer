---@class TechnologyPrototype
local Tech = data.raw["technology"]


if mods["incendiary-arsenal"] and mods["RampantArsenalFork"]and mods["space-age"] then
	data:extend({
		{
            type = "recipe",
            name = "FireComabatUpgrade",
            categories = {"par-electronic-hands"},
			main_product = "combat-mech-armor-rampant-arsenal",
            enabled = false,
            energy_required = 50.0,
            ingredients = {
                {type="item", name="mech-armor-fireproof", amount=1},
                {type="item", name="par-armour-mk7", amount=1},
            },
            results = {{type="item", name="combat-mech-armor-rampant-arsenal", amount=1}},
        },
	})
	table.insert(Tech["rampant-arsenal-technology-combat-mech-armor"].effects, {type = "unlock-recipe", recipe = "FireComabatUpgrade"})
end