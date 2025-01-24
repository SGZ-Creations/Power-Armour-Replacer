if mods["bobplates"]then
	for _, recipe in pairs(data.raw.recipe) do
		for _, result in pairs(recipe.results) do
			if result.name == "bob-carbon" then result.name = "carbon" end
			--if result.name == "bob-tungsten-plate" then result.name = "tungsten-plate" end
			--if result.name == "bob-tungsten-carbide" then result.name = "tungsten-carbide" end
		end
	end
end