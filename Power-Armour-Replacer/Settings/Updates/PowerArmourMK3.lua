---@class data.ModBoolSettingPrototype
local Bool = data.raw["bool-setting"]

if mods["Power Armor MK3"] then
	Bool["pam3-nvm2"].hidden = true
	Bool["pam3-nvm2"].enabled = false
	Bool["pam3-esm3"].hidden = true
	Bool["pam3-esm3"].enabled = false
	Bool["pam3-bm3"].hidden = true
	Bool["pam3-bm3"].enabled = false
	Bool["pam3-pam4"].hidden = true
	Bool["pam3-pam4"].enabled = false

	Bool["pam3-p4xl"].hidden = true
	Bool["pam3-p4xl"].enabled = false
	Bool["pam3-sin"].hidden = true
	Bool["pam3-sin"].enabled = false
	Bool["pam3-pdd"].hidden = true
	Bool["pam3-pdd"].enabled = false
	Bool["pam3-inff"].hidden = true
	Bool["pam3-inff"].enabled = true
	Bool["pam3-inff"].defaults = true
	Bool["pam3-ma2"].enabled = false
	Bool["pam3-ma2"].hidden = true
end