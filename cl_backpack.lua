local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cl_backpack:client:small_backpack', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"kneel3"})
    QBCore.Functions.Progressbar("Opening Small BackPack", "Opening Small BackPack..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local CID = QBCore.Functions.GetPlayerData().citizenid
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "BackPack" .. CID, {
            maxweight = 100000,
            slots = 5,
        })
        TriggerEvent("inventory:client:SetCurrentStash", "BackPack" .. CID)
        local backpackData = {
            outfitData = {
                ["bag"]   = { item = 56, texture = 6},  
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', backpackData)
        backpackEquiped = true
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        TriggerEvent('animations:client:EmoteCommandStart', {"shakeoff"})
    end)
end)

RegisterNetEvent('cl_backpack:client:suitcase2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"suitcase2"})
    QBCore.Functions.Progressbar("Opening Suitcase", "Opening Suitcase..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"suitcase2"})
        local CID = QBCore.Functions.GetPlayerData().citizenid
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "SuitCase" .. CID, {
            maxweight = 300000,
            slots = 10,
        })
        TriggerEvent("inventory:client:SetCurrentStash", "SuitCase" .. CID)
    end)
end)
