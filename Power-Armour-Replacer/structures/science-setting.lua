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
        "par-armour-tech-6",
        "par-battery-tech-6",
        "par-fusion-reactor-tech-6",
        "par-exoskeleton-tech-5",
        "par-laser-tech-6",
        "par-solar-panel-tech-6",
        "par-roboport-tech-6",
        "par-shield-tech-6",
    }
end