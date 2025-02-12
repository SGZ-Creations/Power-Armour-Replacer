data:extend({
	{
		type = "tips-and-tricks-item-category",
		name = "power-armour-replacer",
		order = "P-[Power-Armour-Replacer]"
	},
	{
		type = "tips-and-tricks-item",
		category = "Configurable-Armour-and-Suit",
		name = "power-armour-replacer",
		localised_name = {"PAR.title_Cas"}, --{"transport_drones.title_transport_drones"},
        localised_description = {"Par_Info.Cas"},
		indent = 1,
		order = "A",
		starting_status = "unlocked",
		trigger = {
			type = "unlock-recipe",
			recipe = "light-armor",
		},
	},
	{
		type = "tips-and-tricks-item",
		category = "Power-Armour-Replacer",
		name = "power-armour-replacer",
		indent = 1,
		order = "A",
		starting_status = "unlocked",
		trigger = {
			type = "unlock-recipe",
			recipe = "heavy-armor",
		},
	},
})