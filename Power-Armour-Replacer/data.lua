--[[ Mod main host
if not PAR then PAR = {} end

-- Mod settings host
if not PAR.setting then PAR.setting = {} end

-- Individual settings
PAR.setting.hard_science_required = settings.global["hard_science_required"].value
]]
--recipes--
    require("prototypes.recipes.armour_recipes")
    require("prototypes.recipes.batteries_recipes")
    require("prototypes.recipes.fusion_recipes")
    require("prototypes.recipes.exoskeleton_recipes")
    require("prototypes.recipes.personal_solar_recipes")
    require("prototypes.recipes.roboport_recipes")
    require("prototypes.recipes.laser_recipes")
    require("prototypes.recipes.shield_recipes")
    require("prototypes.recipes.the-rest_recipes")
    require("prototypes.recipes.vanilla-fix_recipes")

--items--
    require("prototypes.items.armour_item")
    require("prototypes.items.batteries_item")
    require("prototypes.items.fusion_item")
    require("prototypes.items.exoskeleton_item")
    require("prototypes.items.personal_solar_item")
    require("prototypes.items.roboport_item")
    require("prototypes.items.laser_item")
    require("prototypes.items.shield_item")
    require("prototypes.items.the-rest_item")

--technology--
    require("prototypes.technology.armour_tech")
    require("prototypes.technology.batteries_tech")
    require("prototypes.technology.exoskeleton_tech")
    require("prototypes.technology.fusion_tech")
    require("prototypes.technology.personal_solar_tech")
    require("prototypes.technology.roboport_tech")
    require("prototypes.technology.laser_tech")
    require("prototypes.technology.shield_tech")
    require("prototypes.technology.the-rest_tech")
    require("prototypes.technology.vanilla-fix_tech")

--rest--
    require("prototype.achievements")
