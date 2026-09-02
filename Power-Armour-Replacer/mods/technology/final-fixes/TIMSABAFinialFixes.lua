local Tech = data.raw["technology"]

if mods["TIMSABA"] then
	Tech["par-laser-tech-1"].research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5}
	Tech["par-roboport-tech-1"].research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5}
	Tech["par-shield-tech-1"].research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5}
	Tech["par-shock-defense-tech-1"].research_trigger = {type ="craft-item", item ="par-fission-reactor-mk1", count = 5}
end