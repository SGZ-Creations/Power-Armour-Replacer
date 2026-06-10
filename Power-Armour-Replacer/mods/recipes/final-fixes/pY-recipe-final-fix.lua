---@class data.RecipePrototype.type
local Recipe = data.raw["recipe"]
if mods["pycoalprocessing"] then
	Recipe["light-armor"].ingredients = {
		{type="item", name="tin-plate", amount= 1},
        {type="item", name="small-parts-01", amount= 5},
	}
	Recipe["heavy-armor"].ingredients = {
		{type="item", name="light-armor", amount= 1},
        {type="item", name="steel-plate", amount= 5},
        {type="item", name="small-parts-01", amount= 5},
	}
	if mods["Power Armor MK3"] then
		Recipe["pamk3-lvest"].ingredients = {
			{type="item", name="light-armor", amount= 1},
			{type="item", name="small-parts-01", amount= 10},
		}
		Recipe["heavy-armor"].ingredients = {
			{type="item", name="pamk3-lvest", amount= 1},
			{type="item", name="steel-plate", amount= 5},
			{type="item", name="small-parts-01", amount= 5},
		}
		Recipe["pamk3-hvest"].ingredients = {
			{type="item", name="heavy-armor", amount= 1},
			{type="item", name="steel-plate", amount= 10},
			{type="item", name="small-parts-01", amount= 10},
		}
	end
end