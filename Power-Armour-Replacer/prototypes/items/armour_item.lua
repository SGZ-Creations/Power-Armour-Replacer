--[[
% 40=0.4 or 105=1.05  
Flatt Resistance 500
Biter Damage 2000
1. Damage Calculation (2000-500)x(1-1.05)
2. Damage Calculation (2000-500)x(100-105) then devide answer by 100
]]
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
local acid_percent = {
  "15", --1
  "30", --2
  "45", --3
  "60", --4
  "75", --5
  "80", --6
  "85", --7
  "90", --8
  "100", --9
  "105", --0
}
local explosion_decrease = {
  "100", --1
  "200", --2
  "300", --3
  "400", --4
  "500", --5
  "600", --6
  "700", --7
  "800", --8
  "900", --9
  "1000", --0
}
local explosion_percent = {
  "25", --0
  "25", --1
  "50", --2
  "50", --3
  "75", --4
  "75", --5
  "85", --6
  "85", --7
  "110", --8
  "110", --9
}
local fire_decrease = {
  "30", --1
  "60", --2
  "90", --3
  "120", --4
  "150", --5
  "180", --6
  "210", --7
  "240", --8
  "270", --9
  "300", --0
}
local fire_percent = {
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
local poison_decrease = {
  "20",--0
  "40",--1
  "60",--2
  "80",--3
  "100",--4
  "120",--5
  "140",--6
  "160",--7
  "180",--8
  "200",--9
}
local poison_percent = {
  "25",--0
  "30",--1
  "35",--2
  "40",--3
  "45",--4
  "50",--5
  "55",--6
  "60",--7
  "65",--8
  "70",--9
}
local electric_decrease = {
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
local electric_percent = {
  "12",--1
  "24",--2
  "36",--3
  "48",--4
  "60",--5
  "72",--6
  "84",--7
  "96",--8
  "108",--9
  "120",--0
}
local impact_decrease = {
  "50",--0
  "100",--1
  "150",--2
  "200",--3
  "250",--4
  "300",--5
  "350",--6
  "400",--7
  "450",--8
  "500",--9
}
local impact_percent = {
  "5",--0
  "10",--1
  "15",--2
  "20",--3
  "25",--4
  "30",--5
  "35",--6
  "40",--7
  "45",--8
  "50",--9
}
local laser_decrease = {
  "11",--1
  "22",--2
  "33",--3
  "44",--4
  "55",--5
  "66",--6
  "77",--7
  "88",--8
  "99",--9
  "111",--0
}
local laser_percent = {
  "5",--1
  "15",--2
  "25",--3
  "35",--4
  "45",--5
  "55",--6
  "65",--7
  "75",--8
  "85",--9
  "95",--0
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