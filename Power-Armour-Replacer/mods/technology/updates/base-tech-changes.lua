local Tech = data.raw["technology"]

Tech["heavy-armor"].research_trigger = {type ="craft-item", item ="light-armor", count = 1}
Tech["heavy-armor"].unit = nil

Tech["steel-processing"].research_trigger = {type ="craft-item", item ="stone-furnace", count = 10}
Tech["steel-processing"].unit = nil

Tech["military"].research_trigger = {type ="craft-item", item ="firearm-magazine", count = 20}
Tech["military"].unit = nil

Tech["lamp"].research_trigger = {type ="craft-item", item ="electronic-circuit", count = 25}
Tech["lamp"].unit = nil

Tech["automation"].research_trigger = {type ="craft-item", item ="lab", count = 5}
Tech["automation"].unit = nil