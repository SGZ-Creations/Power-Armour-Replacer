---@class RecipePrototype
local Recipe = data.raw.recipe
if mods["SeaBlock"]then
	Recipe["firearm-magazine"].enabled = true
end