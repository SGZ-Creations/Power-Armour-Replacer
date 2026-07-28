local armors =
    {
        "par-armour-mk1",
        "par-armour-mk2",
        "par-armour-mk3",
        "par-armour-mk4",
        "par-armour-mk5",
        "par-armour-mk6",
        "par-armour-mk7",
        "par-armour-mk8",
        "par-armour-mk9",
        "par-armour-mk10"
    }
    for _, arm in pairs(armors) do
        table.insert(data.raw.character.character.animations[3].armors, arm)
        data.raw["character-corpse"]["character-corpse"].armor_picture_mapping[arm] = 3
    end