-- Thanks Kirazy For Creating this code.

local icon_utils = {}

if mods["bobequipment"] then
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
        util.color("#ff8533"), -- Orange
        util.color("#00FFFF"), -- Cyan
        util.color("#000000"), -- Pink
        util.color("#000000"), -- Black
    }
else
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
        util.color("#000000"), -- Pink
        util.color("#b459ff"), -- Purple
        util.color("#ffb726"), -- Yellow
        util.color("#ff8533"), -- Orange
        util.color("#f22318"), -- Red
    }
end

--- Creates an icons definition for the given `equipment_name`, with images presumed to be located
--- in the graphics/icons folder and providing 3 images, a base, mask and highlights image.
---@param equipment_name string # The equipment to create an icon for, e.g. "battery".
---@param icon_size data.SpriteSizeType # The size of the square icon, in pixels. e.g. `32` for a 32px by 32px icon.
---@param icon_mipmaps? data.IconMipMapType # Optional. The number of icons present in the icon file, to be used at decreased scale.
---@param tier? integer # The tier of icon to create. Used to obtain the tint.
---@return data.IconData[] # A 3-layer icons definition for the given `equipment_name`.
function icon_utils.create_equipment_icon(equipment_name, icon_size, icon_mipmaps, tier)
    ---@type data.IconData[]
    local icons = {
        -- Base layer, untinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/icons/" .. equipment_name .. "/" .. equipment_name .. "-icon-base.png",
            icon_size = icon_size,
            icon_mipmaps = icon_mipmaps,
        },
        -- Mask layer, tinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/icons/" .. equipment_name .. "/" .. equipment_name .. "-icon-mask.png",
            icon_size = icon_size,
            icon_mipmaps = icon_mipmaps or 0,
            tint = icon_utils.tints[tier or 0],
        },
        -- Highlights layer, untinted (though for icon, special tint to replicate additive blending)
        {
            icon = "__Power-Armour-Replacer__/graphics/icons/" .. equipment_name .. "/" .. equipment_name .. "-icon-highlights.png",
            icon_size = icon_size,
            icon_mipmaps = icon_mipmaps or 0,
            tint = { 1, 1, 1, 0 }, -- Additive blending.
        },
    }

    return icons
end

--- Creates an icons definition for the given `equipment_name`, with images presumed to be located
--- in the graphics/icons folder and providing 3 images, a base, mask and highlights image.
---@param equipment_name string # The equipment to create an icon for, e.g. "battery".
---@param icon_size data.SpriteSizeType # The size of the square icon, in pixels. e.g. `32` for a 32px by 32px icon.
---@param icon_mipmaps? data.IconMipMapType # Optional. The number of icons present in the icon file, to be used at decreased scale.
---@param tier? integer # The tier of icon to create. Used to obtain the tint.
---@return data.IconData[] # A 3-layer icons definition for the given `equipment_name`.
function icon_utils.create_equipment_technology_icon(equipment_name, icon_size, icon_mipmaps, tier)
    ---@type data.IconData[]
    local icons = {
        -- Base layer, untinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/technology/" .. equipment_name .. "/" .. equipment_name .. "-technology-base.png",
            icon_size = icon_size,
            icon_mipmaps = icon_mipmaps,
        },
        -- Mask layer, tinted.
        {
            icon = "__Power-Armour-Replacer__/graphics/technology/" .. equipment_name .. "/" .. equipment_name .. "-technology-mask.png",
            icon_size = icon_size,
            icon_mipmaps = icon_mipmaps or 0,
            tint = icon_utils.tints[tier or 0],
        },
        -- Highlights layer, untinted (though for icon, special tint to replicate additive blending)
        {
            icon = "__Power-Armour-Replacer__/graphics/technology/" .. equipment_name .. "/" .. equipment_name .. "-technology-highlights.png",
            icon_size = icon_size,
            icon_mipmaps = icon_mipmaps or 0,
            tint = { 1, 1, 1, 0 }, -- Additive blending.
        },
        {
            icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
            icon_size = 128,
            icon_mipmaps = 3,
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
---@param tier? integer # The tier of icon to create. Used to obtain the tint.
---@param base_filename? data.FileName # A specific image file to use for the normal-resolution base layer.
---@param hr_base_filename? data.FileName # A specific image file to use for the high-resolution base layer.
---@return data.Sprite # A 3 layer sprite definition with normal and high-resolution sprites.
function icon_utils.create_equipment_sprite(equipment_name, width, height, tier, base_filename, hr_base_filename)
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
                hr_version = {
                    filename = hr_base_filename and hr_base_filename or "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/hr-" .. equipment_name .. "-equipment-base.png",
                    width = width * 2,
                    height = height * 2,
                    priority = "medium",
                    flags = { "no-crop" },
                    scale = 0.5,
                }
            },
            -- Mask layer, tinted.
            {
                filename = "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/" .. equipment_name .. "-equipment-mask.png",
                width = width,
                height = height,
                priority = "medium",
                flags = { "no-crop" },
                hr_version = {
                    filename = "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/hr-" .. equipment_name .. "-equipment-mask.png",
                    width = width * 2,
                    height = height * 2,
                    priority = "medium",
                    flags = { "no-crop" },
                    tint = icon_utils.tints[tier or 0],
                    scale = 0.5,
                }
            },
            -- Highlights layer, additive blending.
            {
                filename = "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/" .. equipment_name .. "-equipment-highlights.png",
                width = width,
                height = height,
                priority = "medium",
                flags = { "no-crop" },
                hr_version = {
                    filename = "__Power-Armour-Replacer__/graphics/equipment/" .. equipment_name .. "/hr-" .. equipment_name .. "-equipment-highlights.png",
                    width = width * 2,
                    height = height * 2,
                    priority = "medium",
                    flags = { "no-crop" },
                    blend_mode = "additive",
                    scale = 0.5,
                }
            }
        }
    }

    return sprite
end

return icon_utils
