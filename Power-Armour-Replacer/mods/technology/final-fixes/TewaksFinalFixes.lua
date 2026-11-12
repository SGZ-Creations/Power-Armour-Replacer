local Tech = data.raw["technology"]

Tech["steel-processing"].research_trigger = {type ="craft-item", item ="stone-furnace", count = 10}
Tech["steel-processing"].unit = nil

Tech["military"].research_trigger = {type ="craft-item", item ="firearm-magazine", count = 20}
Tech["military"].unit = nil