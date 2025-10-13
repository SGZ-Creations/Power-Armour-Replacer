data:extend({
----ImmunityBuffer----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "double-setting",
        name = "ImmunityBuffer_01",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.000000001,
        order = "Immunity-1"
    },
    {
        type = "int-setting",
        name = "ImmunityBuffer_02",
        setting_type = "startup",
        default_value = 1, --kJ
        minimum_value = 0.001, --> J
        order = "Immunity-1"
    },
----ImmunityInputFlow----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "double-setting",
        name = "ImmunityInputFlow_01",
        setting_type = "startup",
        default_value = 150,
        minimum_value = 0.000001,
        order = "Immunity-2"
    },
    {
        type = "int-setting",
        name = "ImmunityInputFlow_02",
        setting_type = "startup",
        default_value = 1, --kW
        minimum_value = 0.001, --kW
        order = "Immunity-2"
    },
----ImmunityConsumption----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "double-setting",
        name = "ImmunityConsumption_01",
        setting_type = "startup",
        default_value = 125,
        minimum_value = 0.000000001,
        order = "Immunity-3"
    },
    {
        type = "int-setting",
        name = "ImmunityConsumption_02",
        setting_type = "startup",
        default_value = 1, --W
        minimum_value = 1, --W
        order = "Immunity-3"
    },
----Immunityweightvalue----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "int-setting",
        name = "ImmunityWeightValue_01",
        setting_type = "startup",
        default_value = 550,
        minimum_value = 1,
        order = "Immunity-4"
    },
    {
        type = "int-setting",
        name = "ImmunityWeightValue_02",
        setting_type = "startup",
        default_value = 1100,
        minimum_value = 1,
        order = "Immunity-4"
    },
})