--[[
if mods["spidertrontiers-community-updates"] then
	data.raw["bool-setting"]["stack-spidertron-recipes"].default.value = "false"
	data.raw["bool-setting"]["stack-spidertron-recipes"].hidden = true
end
]]

if mods["Power Armor MK3"] then
	data.raw["bool-setting"]["pam3-nvm2"].hidden = true
	data.raw["bool-setting"]["pam3-nvm2"].enabled = false
	data.raw["bool-setting"]["pam3-esm3"].hidden = true
	data.raw["bool-setting"]["pam3-esm3"].enabled = false
	data.raw["bool-setting"]["pam3-bm3"].hidden = true
	data.raw["bool-setting"]["pam3-bm3"].enabled = false
	data.raw["bool-setting"]["pam3-pam4"].hidden = true
	data.raw["bool-setting"]["pam3-pam4"].enabled = false

	data.raw["bool-setting"]["pam3-p4xl"].hidden = true
	data.raw["bool-setting"]["pam3-p4xl"].enabled = false
	--data.raw["bool-setting"]["pam3-p4gw"].hidden = true
	--data.raw["bool-setting"]["pam3-p4gh"].hidden = true
end