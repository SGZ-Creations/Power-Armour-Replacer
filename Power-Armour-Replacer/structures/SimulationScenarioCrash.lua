--ScenearioSimulations crashing.
local simulation_crash = {
    "menu-simulation-nauvis-tank-building",
}
    -- "dontcare" replace with "_" 
    local default_utility_constants = data.raw["utility-constants"].default
    local menu_simulations = default_utility_constants.main_menu_simulations
for _, simulation_name in pairs(simulation_crash) do
    menu_simulations[simulation_name] = nil
end