local function recursive_add(name, n)
  local tech = data.raw.technology[name]
  if not tech then return end
  tech = tech.normal or tech
  table.insert(tech.unit.ingredients, {"space-science-pack", n})
  local i = name:find("%d")
  name = name:sub(1, i-1)..tonumber(name:sub(i)+1)
  recursive_add(name, n + 1)
end

local function add_space_science(names)
  for _, name in pairs(names) do
    recursive_add(name, 1)
  end
end

if settings.startup["hard_science_required"].value then
  add_space_science{
    "armour_6",
    "battery_6",
    "fusion-reactor_6",
    "exoskeleton_5",
    "laser_6",
    "solar_6",
    "roboport_6",
    "shield_6",
  }
end