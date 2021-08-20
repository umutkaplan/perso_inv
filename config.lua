Config = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end

Config.RandomStr = function(length)
	if length > 0 then
		return Config.RandomStr(length-1) .. StringCharset[math.random(1, #StringCharset)]
	else
		return ''
	end
end
Config.SplitStr = function(str, delimiter)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( str, delimiter, from  )
	while delim_from do
		table.insert( result, string.sub( str, from , delim_from-1 ) )
		from  = delim_to + 1
		delim_from, delim_to = string.find( str, delimiter, from  )
	end
	table.insert( result, string.sub( str, from  ) )
	return result
end

Config.RandomInt = function(length)
	if length > 0 then
		return Config.RandomInt(length-1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

Config.VendingObjects = {
    992069095,--prop_vend_soda_01
    1114264700,--prop_vend_soda_02
    1099892058 --prop_vend_water_01
}

Config.BinObjects = {
    "prop_bin_05a",
}

Config.PolisEnvanter = {
    ["location"] = {
		[1] = {x = 474.13, y = -1006.71, z = 34.22, h = 177.03, r = 1.0},
	},
}

Config.LostMcEnvanter = {
    ["location"] = {
		[1] = {x = 474.13, y = -1006.71, z = 34.22, h = 177.03, r = 1.0},
	},
}

Config.VendingItem = {
    [1] = {
        name = "cola",
        price = 10,
        count = 50,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water",
        price = 10,
        count = 50,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "ulkerck",
        price = 10,
        count = 50,
        info = {},
        type = "item",
        slot = 3,
    },
    [4] = {
        name = "chocolate",
        price = 10,
        count = 50,
        info = {},
        type = "item",
        slot = 4,
    },
}

Config.AttachmentCrafting = {
    ["location"] = {x = 977.9, y = -95.21, z = 74.87, h = 315.34, r = 1.0}, 
    ["items"] = {
        [1] = {
            name = "pistolgovde",
            count = 50,
            info = {},
            costs = {
                ["copper"] = 40,
                ["iron"] = 20,
                ["gold"] = 10,
                ["odun"] = 10,
            },
            type = "item",
            slot = 1,
            threshold = 0,
            points = 1,
        },
        [2] = {
            name = "hafifgovde",
            count = 50,
            info = {},
            costs = {
                ["copper"] = 50,
                ["iron"] = 15,
                ["gold"] = 30,
                ["odun"] = 10,
            },
            type = "item",
            slot = 2,
            threshold = 10,
            points = 2,
        },
        [3] = {
            name = "weapon_machinepistol",
            count = 50,
            info = {},
            costs = {
                ["pistolgovde"] = 1,
                ["demirboru"] = 1,
                ["yay"] = 2,
            },
            type = "weapon",
            slot = 3,
            threshold = 25,
            points = 3,
        },
        [4] = {
            name = "weapon_minismg",
            count = 50,
            info = {},
            costs = {
                ["hafifgovde"] = 1,
                ["demirboru"] = 1,
                ["yay"] = 3,
            },
            type = "weapon",
            slot = 4,
            threshold = 50,
            points = 4,
        },
        [5] = {
            name = "weapon_bottle",
            count = 50,
            info = {},
            costs = {
                ["sise"] = 1,
            },
            type = "weapon",
            slot = 5,
            threshold = 75,
            points = 5,
        },
        [6] = {
            name = "weapon_switchblade",
            count = 50,
            info = {},
            costs = {
                ["iron"] = 4,
                ["yay"] = 1,
                ["odun"] = 5,
            },
            type = "weapon",
            slot = 6,
            threshold = 100,
            points = 6,
        },
	    [7] = {
        name = "pistol_ammo",
        count = 50,
        info = {},
        costs = {
            ["barut"] = 4,
			["mermikovani"] = 2,
        },
        type = "item",
        slot = 7,
        threshold = 250,
        points = 7,
    },
     [8] = {
        name = "shotgun_ammo",
        count = 50,
        info = {},
        costs = {
            ["barut"] = 3,
            ["mermikovani"] = 1,
        },
        type = "item",
        slot = 8,
        threshold = 250,
        points = 8,
    },
     [9] = {
        name = "smg_ammo",
        count = 50,
        info = {},
        costs = {
            ["barut"] = 4,
            ["mermikovani"] = 2,
        },
        type = "item",
        slot = 9,
        threshold = 250,
        points = 9,
    },
     [10] = {
        name = "rifle_ammo",
        count = 50,
        info = {},
        costs = {
            ["barut"] = 4,
            ["mermikovani"] = 3,
        },
        type = "item",
        slot = 10,
        threshold = 250,
        points = 10,
    },
	     [11] = {
        name = "barut",
        count = 50,
        info = {},
        costs = {
            ["sulfur"] = 5,
			["komur"] = 2,
        },
        type = "item",
        slot = 11,
        threshold = 250,
        points = 11,
    },
     [12] = {
        name = "mermikovani",
        count = 50,
        info = {},
        costs = {
            ["iron"] = 4,
        },
        type = "item",
        slot = 12,
        threshold = 250,
        points = 12,
    },
    [13] = {
        name = "weapon_appistol",
        count = 50,
        info = {},
        costs = {
            ["pistolgovde"] = 1,
            ["demirboru"] = 3,
            ["yay"] = 2,
        },
        type = "weapon",
        slot = 13,
        threshold = 250,
        points = 13,    
    },
    },
}


Config.CraftingItems = {
    ["location"] = {x = 968.5, y = -1798.53, z = 39.55, h = 35.668, r = 1.0},
    ["items"] = {
 
     [1] = {
        name = "yay",
        count = 50,
        info = {},
        costs = {
            ["rolex"] = 1,
        },
        type = "item",
        slot = 1,
        threshold = 250,
        points = 1,
    },
     [2] = {
        name = "barut",
        count = 50,
        info = {},
        costs = {
            ["sulfur"] = 5,
			["komur"] = 2,
        },
        type = "item",
        slot = 2,
        threshold = 250,
        points = 2,
    },
     [3] = {
        name = "mermikovani",
        count = 50,
        info = {},
        costs = {
            ["iron"] = 4,
        },
        type = "item",
        slot = 3,
        threshold = 250,
        points = 3,
    },
     [4] = {
        name = "asit",
        count = 50,
        info = {},
        costs = {
            ["komur"] = 5,
            ["sulfur"] = 2,
            ["purifiedalcohol"] = 1,
        },
        type = "item",
        slot = 4,
        threshold = 250,
        points = 4,
    },
     [5] = {
        name = "lockpick2",
        count = 50,
        info = {},
        costs = {
            ["yay"] = 1,
            ["iron"] = 3,
        },
        type = "item",
        slot = 5,
        threshold = 250,
        points = 5,
    },
     [6] = {
        name = "matkap",
        count = 50,
        info = {},
        costs = {
            ["umatkap"] = 1,
            ["uc"] = 1,
        },
        type = "item",
        slot = 6,
        threshold = 250,
        points = 6,
    },
     [7] = {
        name = "weapon_stickybomb",
        count = 50,
        info = {},
        costs = {
            ["termitz"] = 1,
            ["plastik"] = 20,
			["barut"] = 5,
        },
        type = "weapon",
        slot = 7,
        threshold = 250,
        points = 7,
    },
     [8] = {
        name = "termitz",
        count = 50,
        info = {},
        costs = {
            ["saat"] = 1,
            ["yay"] = 3,
			["plastik"] = 2,
			["gold"] = 1,
        },
        type = "item",
        slot = 8,
        threshold = 250,
        points = 8,
    },
    [9] = {
        name = "kkart",
        count = 50,
        info = {},
        costs = {
            ["sablon_kart"] = 1,
            ["policekart"] = 1,
        },
        type = "item",
        slot = 9,
        threshold = 250,
        points = 9,
    },
    [10] = {
        name = "sykart",
        count = 50,
        info = {},
        costs = {
            ["copper"] = 10,
            ["gold"] = 10,
            ["kkart"] = 1,
            ["mkart"] = 1,
        },
        type = "item",
        slot = 10,
        threshold = 250,
        points = 10,
    },
    [11] = {
        name = "ykart",
        count = 50,
        info = {},
        costs = {
            ["asit"] = 5,
            ["copper"] = 10,
            ["sablon_kart"] = 1,
            ["xmadde"] = 10,
        },
        type = "item",
        slot = 11,
        threshold = 250,
        points = 11,
    },
    [12] = {
        name = "mkart",
        count = 50,
        info = {},
        costs = {
            ["copper"] = 10,
            ["asit"] = 5,
            ["ykart"] = 1,
            ["bkart"] = 1,
            ["sablon_kart"] = 1,
            ["policekart"] = 1,
        },
        type = "item",
        slot = 12,
        threshold = 250,
        points = 12,
    },
    [13] = {
        name = "weapon_molotov",
        count = 50,
        info = {},
        costs = {
            ["sise"] = 1,
            ["essence"] = 5,
            ["temizlikbezi"] = 1,
        },
        type = "item",
        slot = 13,
        threshold = 250,
        points = 13,
    },
    
	}
}

Config.CraftingMechanic = {
    ["location"] = {x = -1155.23, y = -1994.38, z = 13.51, h = 315.14, r = 1.0},
    ["items"] = {
 
        [1] = {
        name = "tunner_chip",
        count = 50,
        info = {},
        costs = {
            ["ekran"] = 1,
            ["elektronik"] = 2,
            ["plastik"] = 1,
        },
        type = "item",
        slot = 1,
        threshold = 250,
        points = 1,
        },
        [2] = {
        name = "dolu_nos",
        count = 50,
        info = {},
        costs = {
            ["nosgazi"] = 1,
            ["elektronik"] = 1,
        },
        type = "item",
        slot = 2,
        threshold = 250,
        points = 2,
    },
	}
}

Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

MaxInventorySlots = 41

BackEngineVehicles = {
    'ninef',
    'adder',
    'vagner',
    't20',
    'infernus',
    'zentorno',
    'reaper',
    'comet2',
    'comet3',
    'jester',
    'jester2',
    'cheetah',
    'cheetah2',
    'prototipo',
    'turismor',
    'pfister811',
    'ardent',
    'nero',
    'nero2',
    'tempesta',
    'vacca',
    'bullet',
    'osiris',
    'entityxf',
    'turismo2',
    'fmj',
    're7b',
    'tyrus',
    'italigtb',
    'penetrator',
    'monroe',
    'ninef2',
    'stingergt',
    'surfer',
    'surfer2',
    'comet3',
}

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}





