-- client.lua
Citizen.CreateThread(function()
    -- Warte, bis das Spiel geladen ist
    Wait(5000)
    
    -- Lade die Blip-Konfiguration
    for _, blipData in ipairs(Config.Blips) do
        -- Erstelle den Blip
        local blip = AddBlipForCoord(blipData.coords.x, blipData.coords.y, blipData.coords.z)
        SetBlipSprite(blip, blipData.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipData.scale)
        SetBlipColour(blip, blipData.color)
        SetBlipAsShortRange(blip, true) -- Blip nur auf kurze Distanz sichtbar
        
        -- Blip-Beschriftung
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipData.name)
        EndTextCommandSetBlipName(blip)
    end
    
    print(#Config.Blips .. " Blips wurden erfolgreich erstellt!")
end)