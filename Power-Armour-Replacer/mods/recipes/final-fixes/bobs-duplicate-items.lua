if mods["bobplates"]then
	for _, recipe in pairs(data.raw.recipe) do
		for _, result in pairs(recipe.results or {}) do
				if result.name == "bob-carbon" then result.name = "carbon"
				elseif result.name == "bob-tungsten-plate" then result.name = "tungsten-plate"
				elseif result.name == "bob-tungsten-carbide" then result.name = "tungsten-carbide"
				elseif result.name == "bob-lithium" then result.name = "lithium-plate"
			end
		end
	end
end

if mods["bobplates"]then
	for _, recipe in pairs(data.raw.recipe) do
		for _, input in pairs(recipe.ingredients or {}) do
				if input.name == "bob-carbon" then input.name = "carbon"
				elseif input.name == "bob-tungsten-plate" then input.name = "tungsten-plate"
				elseif input.name == "bob-tungsten-carbide" then input.name = "tungsten-carbide"
				elseif input.name == "bob-lithium" then input.name = "lithium-plate"
			end
		end
	end
end