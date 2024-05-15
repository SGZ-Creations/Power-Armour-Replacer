--[[
	[""] = {"", 0},
	[""] = 
	{"", 0},
	{
		dependencies = {"bobelectronics",},
		replacements = {
			{"basic-circuit-board", 50}, 1, 2, (1)
			{"electronic-circuit", 50}, 3, 4, (2)
			{"advanced-circuit", 50}, 5, 6, (3)
			{"processing-unit", 50}, 7, 8, (4)
			{"advanced-processing-unit", 50}, 9, 10, (5)
		}
	},
    {
        dependencies = {"bobelectronics",},
        replacements = {
            --{"", 0},
        }
    },
    {
        dependencies = {"bobplates"},
        replacements = {
            --{"", 0},
        }
    },
    {
        dependencies = {"bobelectronics", "bobplates"},
        replacements = {
            --{"", 0},
        }
    },
    --Angels
    {
        dependencies = {"angelssmelting"},
        replacements = {
            --{"", 0},
        }
    },
]]