FR-BackPack Simple backpack script for QBCore


#installation

Add cl_backpack To \qb-smallresources\client

Add sv_backpack To qb-smallresources\server

Add image To qb-inventory/html/images

Add this to To qb-core/shared/items.lua:

-- Fr-clothingbag
["small_backpack"] 				 	 = {["name"] = "small_backpack", 			    	["label"] = "Small BackPack", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "small_backpack.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Use This BackPack To Hide Or Take your Items"},
	["suitcase"] 				 	 = {["name"] = "suitcase", 			    	["label"] = "suitcase", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "suitcase.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = Use This suitcase To Hide Or Take your Items"},
