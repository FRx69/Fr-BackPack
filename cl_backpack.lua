local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cl_backpack:client:small_backpack', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"backpack"})
    QBCore.Functions.Progressbar("Opening Small BackPack", "Opening Small BackPack..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"backpack"})
        TriggerEvent("inventory:client:SetCurrentStash", "SL_637883")
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "SL_637883", {
            maxweight = 4000000,
            slots = 10,
        })
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
        TriggerEvent("inventory:client:SetCurrentStash", "SL_637883")
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "SL_637883", {
            maxweight = 4000000,
            slots = 100,
        })
    end)
end)