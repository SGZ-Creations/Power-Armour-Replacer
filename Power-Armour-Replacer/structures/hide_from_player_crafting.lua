---@class data.ProtypeRecipe
local Hide = data.raw["recipe"]
---@class LuaSettings
local SS = settings.startup

if SS ["HideRecipesFromPlayer"].value == true then
	Hide["par-armour-mk6"].hide_from_player_crafting = true
	Hide["par-armour-mk7"].hide_from_player_crafting = true
	Hide["par-armour-mk8"].hide_from_player_crafting = true
	Hide["par-armour-mk9"].hide_from_player_crafting = true
	Hide["par-armour-mk10"].hide_from_player_crafting = true

	Hide["par-battery-mk6"].hide_from_player_crafting = true
	Hide["par-battery-mk7"].hide_from_player_crafting = true
	Hide["par-battery-mk8"].hide_from_player_crafting = true
	Hide["par-battery-mk9"].hide_from_player_crafting = true
	Hide["par-battery-mk10"].hide_from_player_crafting = true

	Hide["par-fission-reactor-mk6"].hide_from_player_crafting = true
	Hide["par-fission-reactor-mk7"].hide_from_player_crafting = true
	Hide["par-fission-reactor-mk8"].hide_from_player_crafting = true
	Hide["par-fission-reactor-mk9"].hide_from_player_crafting = true
	Hide["par-fission-reactor-mk10"].hide_from_player_crafting = true

	Hide["par-laser-mk6"].hide_from_player_crafting = true
	Hide["par-laser-mk7"].hide_from_player_crafting = true
	Hide["par-laser-mk8"].hide_from_player_crafting = true
	Hide["par-laser-mk9"].hide_from_player_crafting = true
	Hide["par-laser-mk10"].hide_from_player_crafting = true

	Hide["par-roboport-mk6"].hide_from_player_crafting = true
	Hide["par-roboport-mk7"].hide_from_player_crafting = true
	Hide["par-roboport-mk8"].hide_from_player_crafting = true
	Hide["par-roboport-mk9"].hide_from_player_crafting = true
	Hide["par-roboport-mk10"].hide_from_player_crafting = true

	Hide["par-shield-mk6"].hide_from_player_crafting = true
	Hide["par-shield-mk7"].hide_from_player_crafting = true
	Hide["par-shield-mk8"].hide_from_player_crafting = true
	Hide["par-shield-mk9"].hide_from_player_crafting = true
	Hide["par-shield-mk10"].hide_from_player_crafting = true

	Hide["par-solar-panel-mk6"].hide_from_player_crafting = true
	Hide["par-solar-panel-mk7"].hide_from_player_crafting = true
	Hide["par-solar-panel-mk8"].hide_from_player_crafting = true
	Hide["par-solar-panel-mk9"].hide_from_player_crafting = true
	Hide["par-solar-panel-mk10"].hide_from_player_crafting = true

	Hide["par-exoskeleton-mk3"].hide_from_player_crafting = true
	Hide["par-exoskeleton-mk4"].hide_from_player_crafting = true
	Hide["par-exoskeleton-mk5"].hide_from_player_crafting = true

	Hide["par-belt-immunity-mk1"].hide_from_player_crafting = true
	Hide["par-belt-immunity-mk2"].hide_from_player_crafting = true

	Hide["par-nightvision-mk1"].hide_from_player_crafting = true
	Hide["par-nightvision-mk2"].hide_from_player_crafting = true
end