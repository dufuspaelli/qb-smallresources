-- Blacklisting entities can just be handled entirely server side with onesync events
-- No need to run coroutines to supress or delete these when we can simply delete them before they spawn
AddEventHandler("entityCreating", function(handle)
    local entityModel = GetEntityModel(handle)

    -- if Config.BlacklistedVehs[entityModel] or Config.BlacklistedPeds[entityModel] then
    if Config.BlacklistedVehs[entityModel] then
        CancelEvent()
    end

end)

AddEventHandler("entityCreated", function(handle)
    local entityModel = GetEntityModel(handle)

    if Config.BlacklistedPeds[entityModel] then
        --print(source)
        RemoveAllPedWeapons(handle, 1)
        SetPedConfigFlag(handle,272,1) -- remove cop blips

        GiveWeaponToPed(handle, "WEAPON_STUNGUN", 1, false, true)
       -- SetPedCombatAttributes(handle, 5, false)
       -- SetPedCombatAttributes(handle, 3, false)
       -- SetPedCombatAttributes(handle, 46, false)
       -- SetPedCombatAbility(handle,0)
        --RemoveAllPedWeapons(handle, true)
        --TriggerClientEvent("copSpawned", -1, handle)
        -- 199, 220
    end

end)

