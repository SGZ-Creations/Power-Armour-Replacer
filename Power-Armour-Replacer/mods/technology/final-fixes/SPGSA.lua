local Tech = data.raw["technology"]

if mods["SciencePackGaloreSpaceAge"] then
	Tech["sem-spg_science-pack-20-tech"].prerequisites = {"military"}
	Tech["sem-spg_science-pack-31-tech"].prerequisites = {"military"}
end