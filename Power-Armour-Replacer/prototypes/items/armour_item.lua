
local inventory_bonus = {
  "50", --0
  "100", --1
  "150", --2
  "200", --3
  "250", --4
  "300", --5
  "350", --6
  "400", --7
  "450", --8
  "500", --9
}
local physical_decrease = {
  "20", --0
  "40", --1
  "60", --2
  "80", --3
  "100", --4
  "120", --5
  "140", --6
  "160", --7
  "180", --8
  "200", --9
}
local physical_percent = {
  "10", --0
  "20", --1
  "30", --2
  "40", --3
  "50", --4
  "60", --5
  "70", --6
  "80", --7
  "90", --8
  "100", --9
}
local acid_decrease = {
  "50", --0
  "50", --1
  "50", --2
  "50", --3
  "50", --4
  "50", --5
  "50", --6
  "50", --7
  "50", --8
  "50", --9
}
local acid_percent = {
  "30", --1
  "30", --2
  "30", --3
  "30", --4
  "30", --5
  "30", --6
  "30", --7
  "30", --8
  "30", --9
  "30", --0
}
local explosion_decrease = {
  "30", --0
  "30", --1
  "30", --2
  "30", --3
  "30", --4
  "30", --5
  "30", --6
  "30", --7
  "30", --8
  "30", --9
}
local explosion_percent = {
  "35", --0
  "35", --1
  "35", --2
  "35", --3
  "35", --4
  "35", --5
  "35", --6
  "35", --7
  "35", --8
  "35", --9
}
local fire_decrease = {
  "0", --0
  "0", --1
  "0", --2
  "0", --3
  "0", --4
  "0", --5
  "0", --6
  "0", --7
  "0", --8
  "0", --9
}
local fire_percent = {
  "40", --0
  "40", --1
  "40", --2
  "40", --3
  "40", --4
  "40", --5
  "40", --6
  "40", --7
  "40", --8
  "40", --9
}
local poison_decrease = {
  "0",--0
  "0",--1
  "0",--2
  "0",--3
  "0",--4
  "0",--5
  "0",--6
  "0",--7
  "0",--8
  "0",--9
}
local poison_percent = {
  "20",--0
  "20",--1
  "20",--2
  "20",--3
  "20",--4
  "20",--5
  "20",--6
  "20",--7
  "20",--8
  "20",--9
}
local electric_decrease = {
  "0",--0
  "0",--1
  "0",--2
  "0",--3
  "0",--4
  "0",--5
  "0",--6
  "0",--7
  "0",--8
  "0",--9
}
local electric_percent = {
  "30",--0
  "40",--1
  "50",--2
  "60",--3
  "70",--4
  "80",--5
  "90",--6
  "100",--7
  "110",--8
  "120",--9
}
local impact_decrease = {
  "0",--0
  "0",--1
  "0",--2
  "0",--3
  "0",--4
  "0",--5
  "0",--6
  "0",--7
  "0",--8
  "0",--9
}
local impact_percent = {
  "20",--0
  "20",--1
  "20",--2
  "20",--3
  "20",--4
  "20",--5
  "20",--6
  "20",--7
  "20",--8
  "20",--9
}
local laser_decrease = {
  "5",--0
  "5",--1
  "5",--2
  "5",--3
  "5",--4
  "5",--5
  "5",--6
  "5",--7
  "5",--8
  "5",--9
}
local laser_percent = {
  "20",--0
  "20",--1
  "20",--2
  "20",--3
  "20",--4
  "20",--5
  "20",--6
  "20",--7
  "20",--8
  "20",--9
}
local order = {
  "aaz[a_mk1]-aa[armour-replacer]",
  "abz[a_mk2]-ab[armour-replacer]",
  "acz[a_mk3]-ab[armour-replacer]",
  "adz[a_mk4]-ab[armour-replacer]",
  "aez[a_mk5]-ab[armour-replacer]",
  "afz[a_mk6]-ab[armour-replacer]",
  "agz[a_mk7]-ab[armour-replacer]",
  "ahz[a_mk8]-ab[armour-replacer]",
  "aiz[a_mk9]-ab[armour-replacer]",
  "ajz[a_mk10]-ab[armour-replacer]", 
}

local icon = {
  "__Power-Armour-Replacer__/texture/items/power-armor.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk2.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk3.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk4.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk5.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk6.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk7.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk8.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk9.png",
  "__Power-Armour-Replacer__/texture/items/power-armor-mk10.png",
}

local grid_name = {
  "sgz-a1-equipment-grid",
  "sgz-a2-equipment-grid",
  "sgz-a3-equipment-grid",
  "sgz-a4-equipment-grid",
  "sgz-a5-equipment-grid",
  "sgz-a6-equipment-grid",
  "sgz-a7-equipment-grid",
  "sgz-a8-equipment-grid",
  "sgz-a9-equipment-grid",
  "sgz-a10-equipment-grid",
}

if mods["bobwarfare"] then
  local plasma_decrease = {
    "15",
    "30",
    "45",
    "60",
    "75",
    "100",
    "115",
    "130",
    "145",
    "160",
  }
  local plasma_percent = {
    "50",
    "55",
    "60",
    "65",
    "70",
    "75",
    "80",
    "85",
    "90",
    "95",
  }
  local pierce_decrease = {
    "100",
    "200",
    "300",
    "400",
    "500",
    "600",
    "700",
    "800",
    "900",
    "1000",
  }
  local pierce_percent = {
    "10",
    "12",
    "14",
    "16",
    "18",
    "22",
    "24",
    "26",
    "28",
    "30",
  }

  local a = 1
  while a < 11 do
    data:extend({
      {
        type = "armor",
        name = "a_mk" .. tostring(a),
        icon = icon[a],
        icon_size = 256, icon_mipmaps = 4,
        resistances = {
          {
            type = "plasma",
            decrease = plasma_decrease[a],
            percent = plasma_percent[a], 
          },
          {
            type = "bob-pierce",
            decrease = pierce_decrease[a],
            percent = pierce_percent[a], 
          }, 
          {
            type = "physical",
            decrease = physical_decrease[a],
            percent = physical_percent[a],
          },
          {
            type = "acid",
            decrease = acid_decrease[a],
            percent = acid_percent[a],
          },
          {
            type = "explosion",
            decrease = explosion_decrease[a],
            percent = explosion_percent[a],
          },
          {
            type = "fire",
            decrease = fire_decrease[a],
            percent = fire_percent[a], 
          }, 
          {
            type = "electric",
            decrease = electric_decrease[a],
            percent = electric_percent[a], 
          },
          {
            type = "impact",
            decrease = impact_decrease[a],
            percent = impact_percent[a], 
          },
          {
            type = "laser",
            decrease = laser_decrease[a],
            percent = laser_percent[a], 
          },
          {
            type = "poison",
            decrease = poison_decrease[a],
            percent = poison_percent[a], 
          },
        },
        subgroup = "replacer_item",
        order = order[a],
        stack_size = 1,
        infinite = true,
        equipment_grid = grid_name[a],
        inventory_size_bonus = inventory_bonus[a],
        open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
        close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
      },
    })
    a = a + 1 
  end
else
  local a = 1
  while a < 11 do
    data:extend({
      {
        type = "armor",
        name = "a_mk" .. tostring(a),
        icon = icon[a],
        icon_size = 256, icon_mipmaps = 4,
        resistances = { 
          {
            type = "physical",
            decrease = physical_decrease[a],
            percent = physical_percent[a],
          },
          {
            type = "acid",
            decrease = acid_decrease[a],
            percent = acid_percent[a],
          },
          {
            type = "explosion",
            decrease = explosion_decrease[a],
            percent = explosion_percent[a],
          },
          {
            type = "fire",
            decrease = fire_decrease[a],
            percent = fire_percent[a], 
          }, 
          {
            type = "electric",
            decrease = electric_decrease[a],
            percent = electric_percent[a], 
          },
          {
            type = "impact",
            decrease = impact_decrease[a],
            percent = impact_percent[a], 
          },
          {
            type = "laser",
            decrease = laser_decrease[a],
            percent = laser_percent[a], 
          },
          {
            type = "poison",
            decrease = poison_decrease[a],
            percent = poison_percent[a], 
          },
        },
        subgroup = "replacer_item",
        order = order[a],
        stack_size = 1,
        infinite = true,
        equipment_grid = grid_name[a],
        inventory_size_bonus = inventory_bonus[a],
        open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
        close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
      },
    })
    a = a + 1 
  end
end

local width = {
  "10",
  "20",
  "30",
  "40",
  "50",
  "60",
  "70",
  "80",
  "90",
  "100",
}

local height = {
  "10",
  "20",
  "30",
  "40",
  "50",
  "60",
  "70",
  "80",
  "90",
  "100",
}

local g = 1
while g < 11 do
  data:extend({
    {
      type = "equipment-grid",
      equipment_categories = {"armor"},
      name = grid_name[g],
      width = width[g],
      height = height[g],
    },
  })
  g = g + 1
end