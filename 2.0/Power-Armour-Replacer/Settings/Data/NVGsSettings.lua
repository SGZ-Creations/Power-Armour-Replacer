data:extend({
----NvgsBuffer----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "double-setting",
        name = "NvgBuffer_01",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.000000001,
        order = "Nvgs-1"
    },
    {
        type = "int-setting",
        name = "NvgBuffer_02",
        setting_type = "startup",
        default_value = 1, --kJ
        minimum_value = 1, --kJ
        order = "Nvgs-1"
    },
----NvgsInputFlow----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "double-setting",
        name = "NvgInputFlow_01",
        setting_type = "startup",
        default_value = 150,
        minimum_value = 0.000001,
        order = "Nvgs-2"
    },
    {
        type = "int-setting",
        name = "NvgInputFlow_02",
        setting_type = "startup",
        default_value = 1, --kW
        minimum_value = 0.001, --kW
        order = "Nvgs-2"
    },
----NvgsEnergyInput----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "double-setting",
        name = "NvgEnergyInput_01",
        setting_type = "startup",
        default_value = 125,
        minimum_value = 0.000000001,
        order = "Nvgs-3"
    },
    {
        type = "int-setting",
        name = "NvgEnergyInput_02",
        setting_type = "startup",
        default_value = 1, --W
        minimum_value = 1, --W
        order = "Nvgs-3"
    },
----NvgsWeight----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "int-setting",
        name = "NvgWeight_01",
        setting_type = "startup",
        default_value = 550,
        minimum_value = 1,
        order = "Nvgs-4"
    },
    {
        type = "int-setting",
        name = "NvgWeight_02",
        setting_type = "startup",
        default_value = 1100,
        minimum_value = 1,
        order = "Nvgs-4"
    },
})