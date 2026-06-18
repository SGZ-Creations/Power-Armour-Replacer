---@class data.RecipePrototype.type
local Recipe = data.raw["recipe"]
if mods["pycoalprocessing"] then
	Recipe["light-armor"].ingredients = {
		{type="item", name="tin-plate", amount= 25},
        {type="item", name="small-parts-01", amount= 25},
	}
	Recipe["heavy-armor"].ingredients = {
		{type="item", name="light-armor", amount= 1},
        {type="item", name="steel-plate", amount= 25},
        {type="item", name="small-parts-01", amount= 25},
	}
	if mods["Power Armor MK3"] then
		Recipe["pamk3-lvest"].ingredients = {
			{type="item", name="light-armor", amount= 1},
			{type="item", name="small-parts-01", amount= 30},
		}
		Recipe["heavy-armor"].ingredients = {
			{type="item", name="pamk3-lvest", amount= 1},
			{type="item", name="steel-plate", amount= 30},
			{type="item", name="small-parts-01", amount= 30},
		}
		Recipe["pamk3-hvest"].ingredients = {
			{type="item", name="heavy-armor", amount= 1},
			{type="item", name="steel-plate", amount= 30},
			{type="item", name="small-parts-01", amount= 30},
		}
	end
end