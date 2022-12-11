local QBCore = exports['qb-core']:GetCoreObject()



QBCore.Functions.CreateUseableItem("small_backpack", function(source, item)
    local src = source
    TriggerClientEvent("backpack:client:small_backpack", src, item.name)
end)

QBCore.Functions.CreateUseableItem("suitcase", function(source, item)
    local src = source
    TriggerClientEvent("backpack:client:suitcase2", src, item.name)
end)