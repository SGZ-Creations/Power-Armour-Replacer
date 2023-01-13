data:extend(
{
  --[[
  {
    if mods["Krastorio2"] then 
      add resistances =
      {
        {
          type = "radioactive",
          decrease = 100,
          percent = 10
        }
      },
  },
  ]]
  {
    type = "armor",
    name = "a_mk1",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 6,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 50
      },
      {
        type = "explosion",
        decrease = 30,
        percent = 35
      },
      {
        type = "fire",
        decrease = 0,
        percent = 40
      }
    },
    subgroup = "armor",
    order = "aaz[a_mk1]-aa[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a1-equipment-grid",
    inventory_size_bonus = 50,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk2",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk2.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "abz[a_mk2]-ab[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a2-equipment-grid",
    inventory_size_bonus = 100,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk3",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk3.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 20,
        percent = 50
      },
      {
        type = "acid",
        decrease = 10,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 60
      },
      {
        type = "fire",
        decrease = 10,
        percent = 80
      }
    },
    subgroup = "armor",
    order = "acz[a_mk3]-ac[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a3-equipment-grid",
    inventory_size_bonus = 150,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk4",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk4.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "adz[a_mk4]-ad[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a4-equipment-grid",
    inventory_size_bonus = 200,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk5",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk5.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "aez[a_mk5]-ae[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a5-equipment-grid",
    inventory_size_bonus = 250,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk6",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk6.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "afz[a_mk6]-af[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a6-equipment-grid",
    inventory_size_bonus = 300,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk7",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk7.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "agz[a_mk7]-ag[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a7-equipment-grid",
    inventory_size_bonus = 350,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk8",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk8.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "ahz[a_mk8]-ah[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a8-equipment-grid",
    inventory_size_bonus = 400,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk9",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk9.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "aiz[a_mk9]-ai[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a9-equipment-grid",
    inventory_size_bonus = 450,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  {
    type = "armor",
    name = "a_mk10",
    icon = "__Power-Armour-Replacer__/texture/items/power-armor-mk10.png",
    icon_size = 256, icon_mipmaps = 4,
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 0,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 40
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    subgroup = "armor",
    order = "ajz[a_mk10]-aj[armour-replacer]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "sgz-a10-equipment-grid",
    inventory_size_bonus = 500,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
})
data:extend(
  {
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a1-equipment-grid",
      width = 10,
      height = 10,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a2-equipment-grid",
      width = 20,
      height = 20,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a3-equipment-grid",
      width = 30,
      height = 30,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a4-equipment-grid",
      width = 40,
      height = 40,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a5-equipment-grid",
      width = 50,
      height = 50,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a6-equipment-grid",
      width = 60,
      height = 60,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a7-equipment-grid",
      width = 70,
      height = 70,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a8-equipment-grid",
      width = 80,
      height = 80,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a9-equipment-grid",
      width = 90,
      height = 90,
    },
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = "sgz-a10-equipment-grid",
      width = 100,
      height = 100,
    },
  })