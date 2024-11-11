-- Thanks Kirazy For Creating this code.

local icon_utils = {}

--if mods["bobequipment"] then
    -- Follow Bob's tier colors when playing with Bob's mods.

    -- Make this a global (or available globally somehow) and reference it
    -- when you ened to get a color for a tier.
    ---@type data.Color[]
    icon_utils.tints = {
        util.color("#808080"), -- Gray
        util.color("#ffb726"), -- Yellow
        util.color("#f22318"), -- Red
        util.color("#33b4ff"), -- Blue
        util.color("#b459ff"), -- Purple
        util.color("#2ee55c"), -- Green
        util.color("#00FFFF"), -- Cyan
        util.color("#AA336A"), -- DarkPink
        util.color("#ff8533"), -- Orange
        util.color("#000000"), -- Black
    }
--[[else
    -- Make this a global (or available globally somehow) and reference it
    -- when you ened to get a color for a tier.
    ---@type data.Color[]
    icon_utils.tints = {
        -- Do not rename Color (util is a Factorio global utility class)
        util.color("#000000"), -- Black
        util.color("#808080"), -- Gray
        util.color("#33b4ff"), -- Blue
        util.color("#00FFFF"), -- Cyan
        util.color("#2ee55c"), -- Green
        util.color("#AA336A"), -- DarkPink
        util.color("#b459ff"), -- Purple
        util.color("#ffb726"), -- Yellow
        util.color("#ff8533"), -- Orange
        util.color("#f22318"), -- Red
    }
end]]

--- Creates an icons definition for the given `equipment_name`, with images presumed to be located
--- in the graphics/icons folder and providing 3 images, a base, mask and highlights image.
---@param equipment_name string # The equipment to create an icon for, e.g. "battery".
---@param icon_size data.SpriteSizeType # The size of the square icon, in pixels. e.g. `32` for a 32px by 32px icon.
---@param tier integer # The tier of icon to create. Used to obtain the tint.
---@return data.IconData[] # A 3-layer icons definition for the given `equipment_name`.
function icon_utils.create_equipment_icon(equipment_name, icon_size, tier)
    ---@type data.IconData[]
    local icons = {
        -- Base layer, untinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/icons/" .. equipment_name .. "/" .. equipment_name .. "-icon-base.png",
            icon_size = icon_size,
        },
        -- Mask layer, tinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/icons/" .. equipment_name .. "/" .. equipment_name .. "-icon-mask.png",
            icon_size = icon_size,
            tint = icon_utils.tints[tier or 0],
        },
        -- Highlights layer, untinted (though for icon, special tint to replicate additive blending)
        {
            icon = "__Power-Armour-Replacer__/graphics/icons/" .. equipment_name .. "/" .. equipment_name .. "-icon-highlights.png",
            icon_size = icon_size,
            tint = { 1, 1, 1, 0 }, -- Additive blending.
        },
    }
    return icons
end

--- Creates an icons definition for the given `equipment_name`, with images presumed to be located
--- in the graphics/icons folder and providing 3 images, a base, mask and highlights image.
---@param equipment_name string # The equipment to create an icon for, e.g. "battery".
---@param icon_size data.SpriteSizeType # The size of the square icon, in pixels. e.g. `32` for a 32px by 32px icon.
---@param tier integer # The tier of icon to create. Used to obtain the tint.
---@return data.IconData[] # A 3-layer icons definition for the given `equipment_name`.
function icon_utils.create_equipment_technology_icon(equipment_name, icon_size, tier)
    ---@type data.IconData[]
    local icons = {
        -- Base layer, untinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/technology/" .. equipment_name .. "/" .. equipment_name .. "-technology-base.png",
            icon_size = icon_size,
            scale = 256 / icon_size,
        },
        -- Mask layer, tinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/technology/" .. equipment_name .. "/" .. equipment_name .. "-technology-mask.png",
            icon_size = icon_size,
            tint = icon_utils.tints[tier or 0],
            scale = 256 / icon_size,
        },
        -- Highlights layer, untinted (though for icon, special tint to replicate additive blending)
        {
            icon = "__Power-Armour-Replacer__/graphics/technology/" .. equipment_name .. "/" .. equipment_name .. "-technology-highlights.png",
            icon_size = icon_size,
            tint = { 1, 1, 1, 0 }, -- Additive blending.
            scale = 256 / icon_size,
        },
        {
            icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
            icon_size = 128,
            shift = {100, 100}
        }
    }
    return icons
end

--- Creates a sprite definition for the given `equipment_name`, with images presumed to be located
--- in the graphics/equipment folder, and providing 2 sets of 3 images, a normal and high-res base, mask
--- and highlights image.
---@param equipment_name string # The equipment to create a layered sprite for, e.g. "battery".
---@param width data.SpriteSizeType # The width of the normal resolution icon. It is assumed that the width of the high-resolution icon is twice the width, exactly.
---@param height data.SpriteSizeType # The height of the normal resolution icon. It is assumed that the height of the high-resolution icon is twice the width, exactly.
---@param tier integer # The tier of icon to create. Used to obtain the tint.
---@param base_filename? data.FileName # A specific image file to use for the normal-resolution base layer.
---@return data.Sprite # A 3 layer sprite definition with normal and high-resolution sprites.
function icon_utils.create_equipment_sprite(equipment_name, width, height, tier, base_filename)
    ---@type data.Sprite
    local sprite = {
        layers = {
            -- Base layer, untinted.
            {
                filename = base_filename and base_filename or "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/" .. equipment_name .. "-equipment-base.png",
                width = width,
                height = height,
                priority = "medium",
                flags = { "no-crop" },
            },
            -- Mask layer, tinted.
            {
                filename = "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/" .. equipment_name .. "-equipment-mask.png",
                width = width,
                height = height,
                tint = icon_utils.tints[tier or 0],
                priority = "medium",
                flags = { "no-crop" },
            },
            -- Highlights layer, additive blending.
            {
                filename = "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/" .. equipment_name .. "-equipment-highlights.png",
                width = width,
                height = height,
                blending_mode = "additive-soft",
                priority = "medium",
                flags = { "no-crop" },
            }
        }
    }
    return sprite
end

return icon_utils
