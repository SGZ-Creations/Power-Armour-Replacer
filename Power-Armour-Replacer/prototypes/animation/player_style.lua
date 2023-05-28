local armors = {"a_mk1", "a_mk2", "a_mk3", "a_mk4", "a_mk5", "a_mk6", "a_mk7", "a_mk8", "a_mk9", "a_mk10"}
  for i, arm in pairs(armors) do
    table.insert(data.raw.character.character.animations[3].armors, arm)
    data.raw["character-corpse"]["character-corpse"].armor_picture_mapping[arm] = 3
  end