if mods["Krastorio2"]and not mods["Krastorio2-spaced-out"] then
	table.insert(data.raw.lab["kr-advanced-lab"].inputs, "kr-advanced-tech-card")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "automation-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "logistic-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "military-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "chemical-science-pack")
end

if mods["Krastorio2-spaced-out"] then
	table.insert(data.raw.lab["kr-advanced-lab"].inputs, "kr-advanced-tech-card")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "automation-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "logistic-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "military-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "chemical-science-pack")
end

if mods["Krastorio2"]and mods["space-age"] and not mods["Krastorio2-spaced-out"] then
	data.raw.lab["kr-singularity-lab"].inputs = {
		"automation-science-pack",
		"logistic-science-pack",
		"chemical-science-pack",
		"military-science-pack",
		"production-science-pack",
		"utility-science-pack",
		"space-science-pack",
		"electromagnetic-science-pack",
		"metallurgic-science-pack",
		"agricultural-science-pack",
		"cryogenic-science-pack",
		"promethium-science-pack",
		"kr-advanced-tech-card",
		"kr-matter-tech-card",
		"kr-singularity-tech-card",
	}
end