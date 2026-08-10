if mods["Krastorio2"]and not mods["Krastorio2-spaced-out"] then
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "automation-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "logistic-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "military-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "chemical-science-pack")
end

if mods["Krastorio2-spaced-out"] then
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "automation-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "logistic-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "military-science-pack")
	table.insert(data.raw.lab["kr-singularity-lab"].inputs, "chemical-science-pack")
end