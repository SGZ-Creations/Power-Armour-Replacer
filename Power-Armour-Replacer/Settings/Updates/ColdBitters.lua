---@class data.ModBoolSettingPrototype
local Bool = data.raw["bool-setting"]

if mods["Cold_biters"]then
	Bool["cb-enable-cold-warfare"].enabled = true
	Bool["cb-enable-cold-warfare"].default_value = true
end