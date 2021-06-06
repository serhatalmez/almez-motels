    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]

almez = nil --almez gercek degil miymis?
ESX = nil
OwnedMotels = nil
PlayerData = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local estateOpen = false

RegisterNetEvent("almez:sendData")
AddEventHandler("almez:sendData", function(almez, keys, player)
    almez = almez --Aslında almez = fixgod ama olsun
    OwnedMotels = keys
    PlayerData = player
end)

Citizen.CreateThread(function(motelId)
    while true do
        local sleep = 5000
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local dst = GetDistanceBetweenCoords(playercoords, Cfg.SpareKeyLocation.x, Cfg.SpareKeyLocation.y, Cfg.SpareKeyLocation.z, true)
        local dst2 = GetDistanceBetweenCoords(playercoords, Cfg.SpareKeyLocation.x, Cfg.SpareKeyLocation.y, Cfg.SpareKeyLocation.z, true)
if dst2 < 4 then
    sleep = 5
    DrawMarker(2, Cfg.SpareKeyLocation.x, Cfg.SpareKeyLocation.y, Cfg.SpareKeyLocation.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 255, 255, 255, 0, 0, 0, 1, 0, 0, 0)
    if dst2 < 4 then
        DrawText3D(Cfg.SpareKeyLocation.x, Cfg.SpareKeyLocation.y, Cfg.SpareKeyLocation.z + 0.2, '[E] Yedek Anahtar Al')
        if IsControlJustReleased(0, 38) then
            FreezeEntityPosition(PlayerPedId(), true)
                TriggerEvent("mythic_progbar:client:progress", {
                    name = "almez-motels",
                    duration = 10000,
                    label = "Yedek anahtar çıkartıyorsun...",
                    useWhileDead = false,
                    canCancel = false,
                    controlDisables = {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    },
                    animation = {
                        animDict = "",
                        anim = "",
                    },
                    prop = {
                        model = "",
                    }
                }, function(status)
            if not status then
                FreezeEntityPosition(PlayerPedId(), false)
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent("almez:yedek")
            end
        end)
           FreezeEntityPosition(PlayerPedId(), false)
        end
    end
end
Citizen.Wait(sleep)
    end
end)

Citizen.CreateThread(function()
	while ESX == nil do
		Citizen.Wait(100)
    end
    while almez == nil or PlayerData == nil do
        Citizen.Wait(1000)
    end
    CheckOwnership()
    CreateBlips()
    MenuCheck()
    DrawTexts()
    if #elevators > 0 then
        StartElevatorsCheck()
    end
end)

RegisterNetEvent('almez-motels:client:toggleDoor')
AddEventHandler('almez-motels:client:toggleDoor', function(motelId, doorId, state)
    almez[motelId].doors[doorId].locked = state
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'kapi', 0.7)
end)

RegisterNetEvent('almez-motels:client:toggleBackDoor')
AddEventHandler('almez-motels:client:toggleBackDoor', function(motelId, state)
    almez[motelId].info.locked2 = state
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'kapi', 0.7)
end)

RegisterNetEvent('almez-motels:client:toggleStash')
AddEventHandler('almez-motels:client:toggleStash', function(motelId, doorId, state)
    almez[motelId].stashes[doorId].locked = state
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'kapi', 0.7)
end)

RegisterNetEvent('almez-motels:client:toggleStash2')
AddEventHandler('almez-motels:client:toggleStash2', function(motelId, state)
    almez[motelId].info.locked4 = state
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5.0, 'kapi', 0.7)
end)

RegisterNetEvent("almez-motels:updateOwnedMotels")
AddEventHandler("almez-motels:updateOwnedMotels", function(motelId, action, msg)
    if not action then
        for i = 1, #OwnedMotels, 1 do
            if OwnedMotels[i].motelId == motelId then
                table.remove(OwnedMotels, i)
                exports.mythic_notify:DoHudText("error", motelId.. msg)
                break
            end
        end
    elseif action then
        motelId = tonumber(motelId)
        table.insert(OwnedMotels, {motelId = motelId})
        exports.mythic_notify:DoHudText("success", motelId .. msg)
    end
    UpdateBlips()
end)

RegisterNetEvent('almez-motels:updateOwnedMotels2')
AddEventHandler('almez-motels:updateOwnedMotels2', function(motelId, action)
    if action then
        for i = 1, #OwnedMotels, 1 do
            table.remove(OwnedMotels, i)
            exports.mythic_notify:DoHudText("error", motelId.. ' numaralı odani devrettin')
        end
    elseif not action then
        local motelId = tostring(motelId)
        table.insert(OwnedMotels, {motelId = motelId})
        exports.mythic_notify:DoHudText("success", motelId .. ' numaralı odayi devir aldın')
    end
    print(json.encode(OwnedMotels))
    Citizen.Wait(1000)
    UpdateBlips2()
end)

RegisterNetEvent('almez-motels:client:openDoor2')
AddEventHandler('almez-motels:client:openDoor2', function(motelidqb)
    MetaDoorLock(motelidqb)
end)

local blips = {}

function CreateBlips()
    local hasMotel = false
    for i = 1, #OwnedMotels, 1 do
        if OwnedMotels[i].motelId > 0 then
            hasMotel = true
            break
        end
    end
    if not hasMotel then
        for i = 1, #almez, 1 do
            local sblip = AddBlipForCoord(almez[i].info.coords)
            SetBlipSprite(sblip, 374)
            SetBlipColour(sblip, 2)
            SetBlipScale(sblip, 0.4)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Satılık Oda')
            EndTextCommandSetBlipName(sblip)
            SetBlipAsShortRange(sblip, true)
            table.insert(blips, sblip)
        end
    else
        for x = 1, #OwnedMotels, 1 do
            local motelId = OwnedMotels[x].motelId
            local oblip = AddBlipForCoord(almez[motelId].info.coords)
            SetBlipSprite(oblip, 40)
            SetBlipColour(oblip, 2)
            SetBlipScale(oblip, 0.6)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Oda')
            EndTextCommandSetBlipName(oblip)
            SetBlipAsShortRange(oblip, true)
            table.insert(blips, oblip)
        end
    end
    
    local eblip = AddBlipForCoord(Cfg.ReceptionLocation.x, Cfg.ReceptionLocation.y, Cfg.ReceptionLocation.z)
    SetBlipSprite(eblip, 350)
    SetBlipColour(eblip, 2)
    SetBlipScale(eblip, 0.5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Resepsiyon')
    EndTextCommandSetBlipName(eblip)
    SetBlipAsShortRange(eblip, true)
end

function UpdateBlips()
    for k,v in pairs(blips) do
        RemoveBlip(v)
    end

    blips = {}

    local hasMotel = false
    for i = 1, #OwnedMotels, 1 do
        local motel = tonumber(OwnedMotels[i].motelId)
        if motel > 0 then
            hasMotel = true
            break
        end
    end
    if not hasMotel then
        for i = 1, #almez, 1 do
            local sblip = AddBlipForCoord(almez[i].info.coords)
            SetBlipSprite(sblip, 374)
            SetBlipColour(sblip, 2)
            SetBlipScale(sblip, 0.4)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Satılık Oda')
            EndTextCommandSetBlipName(sblip)
            SetBlipAsShortRange(sblip, true)
            table.insert(blips, sblip)
        end
    elseif hasMotel then
        for x = 1, #OwnedMotels, 1 do
            local motel = OwnedMotels[x].motelId
            local oblip = AddBlipForCoord(almez[motel].info.coords)
            SetBlipSprite(oblip, 40)
            SetBlipColour(oblip, 2)
            SetBlipScale(oblip, 0.6)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Oda')
            EndTextCommandSetBlipName(oblip)
            SetBlipAsShortRange(oblip, true)
            table.insert(blips, oblip)
        end
    end
end

function UpdateBlips2()
    local hasMotel = false
    for i = 1, #OwnedMotels, 1 do
        local motel = tonumber(OwnedMotels[i].motelId)
        if motel > 0 then
            hasMotel = true
            break
        end
    end
    if not hasMotel then
        for k,v in pairs(blips) do
            RemoveBlip(v)
        end

        blips = {}
        for i = 1, #almez, 1 do
            local sblip = AddBlipForCoord(almez[i].info.coords)
            SetBlipSprite(sblip, 374)
            SetBlipColour(sblip, 2)
            SetBlipScale(sblip, 0.4)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Satılık Oda')
            EndTextCommandSetBlipName(sblip)
            SetBlipAsShortRange(sblip, true)
            table.insert(blips, sblip)
        end
    end
end

function UpdateBlips3(motelId)
    local hasMotel = false 
    for i = 1, #OwnedMotels, 1 do
        local motel = tonumber(OwnedMotels[i].motelId)
        if motel > 0 then
            hasMotel = true
            break
        end
    end
    if hasMotel then
        for k,v in pairs(blips) do
            RemoveBlip(v)
        end

        blips = {}
        print(motelId) 
        local oblip = AddBlipForCoord(almez[motelId].info.coords)
        SetBlipSprite(oblip, 40)
        SetBlipColour(oblip, 2)
        SetBlipScale(oblip, 0.6)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Oda')
        EndTextCommandSetBlipName(oblip)
        SetBlipAsShortRange(oblip, true)
        table.insert(blips, oblip)
    end
end

function CheckOwnership()
    Citizen.CreateThread(function()
        while true do
            for i = 1, #almez, 1 do
                for x = 1, #almez[i].doors, 1 do
                    local ped = PlayerPedId()
                    local playercoords = GetEntityCoords(ped)
                    local dst = GetDistanceBetweenCoords(playercoords, almez[i].info.coords, 0)
                    if dst <= 2.5 then                        
                        if almez[i].doors[x].obj == nil or not DoesEntityExist(almez[i].doors[x].obj) then
                            almez[i].doors[x].obj = GetClosestObjectOfType(almez[i].doors[x].coords, 1.2, almez[i].doors[x].doorhash, 0, 0, 0)
                            FreezeEntityPosition(almez[i].doors[x].obj, almez[i].doors[x].locked)
                        else
                            FreezeEntityPosition(almez[i].doors[x].obj, almez[i].doors[x].locked)
                            if almez[i].doors[x].locked then
                                SetEntityHeading(almez[i].doors[x].obj, almez[i].doors[x].h)
                            end
                        end

                    end
                end
            end
            Citizen.Wait(1000)
        end
    end)
end

function MenuCheck()
    Citizen.CreateThread(function()
        while true do
            local sleep = true
            if not estateOpen then
                local ped = PlayerPedId()
                local playercoords = GetEntityCoords(ped)
                local dst = GetDistanceBetweenCoords(playercoords, Cfg.ReceptionLocation.x, Cfg.ReceptionLocation.y, Cfg.ReceptionLocation.z, 1)
                if dst <= 1.5 then
                    sleep = false
                end
                if dst <= 1.5 then
                    DrawMarker(27, Cfg.ReceptionLocation.x, Cfg.ReceptionLocation.y, Cfg.ReceptionLocation.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, 0.8, 255, 0, 0, 155, 0, 0, 2, 0, 0, 0, 0, 0)
                end
                
                if dst <= 1.5 then
                    DrawText3D(Cfg.ReceptionLocation.x, Cfg.ReceptionLocation.y ,Cfg.ReceptionLocation.z, '[~r~E~s~] Resepsiyon', 0.3)
                    if IsControlJustReleased(0, 38) then
                        OpenEstate()
                    end
                end
            end
            if sleep == true then
                Citizen.Wait(1000)
            else
                Citizen.Wait(5)
            end
        end
    end)
end
                              --<<< [TR] Kapılarda oda numarası yazmasını istiyorsanız () içine motelidqb yazın.    
function DrawTexts(motelidqb) --<<< [EN] If you want it to write the room number on the doors, write motelidqb in ()
    Citizen.CreateThread(function()
        while true do
            local sleep = 1
            local ped = PlayerPedId()
            local playercoords = GetEntityCoords(ped)
            for i = 1, #almez, 1 do
                for x = 1, #almez[i].stashes, 1 do
                    local dst = GetDistanceBetweenCoords(playercoords, almez[i].stashes[x].coords, 1)
                    if dst <= 7 then
                        sleep = 5
                    end
                    if dst <= 2.5 then
                        DrawText3D(almez[i].stashes[x].coords[1], almez[i].stashes[x].coords[2], almez[i].stashes[x].coords[3], '[~s~E~s~] Depo', 0.4)
                        if dst <= 1.5 then
                            if IsControlJustPressed(0, 46) then
                                    CanOpenStash()
                            end
                        end
                    end
                end
-- Kapılarda oda numarası yazmasını istiyorsanız end'e kadar yorum satırını kaldırınız. (satır 390) [EN] If you want the room number to be written on the doors, remove the comment line until the end(line 390)
                for x = 1, #almez[i].doors, 1 do
                    local dst = GetDistanceBetweenCoords(playercoords, almez[i].doors[x].coords, 1)
                    motelidqb = tostring(motelidqb)
                    motelid = tostring(i)
                    if dst <= 7 then
                        sleep = 5
                    end
                    if dst <= 1 then
                        DrawText3D(almez[i].doors[x].coords[1], almez[i].doors[x].coords[2], almez[i].doors[x].coords[3], motelid, 0.4)
                    end
                end --< [TR] bunu kaldıracaksın [EN] remove this
            end
                Citizen.Wait(0)
        end
    end)
end

function ToggleDoor(motelId, doorId)
    RequestAnimDict("anim@mp_player_intmenu@key_fob@")
    while not HasAnimDictLoaded("anim@mp_player_intmenu@key_fob@") do
        Citizen.Wait(1)
    end
    local ped = PlayerPedId()

    TaskPlayAnim(ped, "anim@mp_player_intmenu@key_fob@", "fob_click", 8.0, 8.0, 1000, 1, 1, 0, 0, 0)
    Citizen.Wait(2000)
    ClearPedTasks(ped)
    TriggerServerEvent("almez-motels:server:toggleDoor", motelId, doorId, not almez[motelId].doors[doorId].locked)
end


-- function ToggleDoor(motelId, doorId)
--     RequestAnimDict("anim@heists@keycard@")
--     while not HasAnimDictLoaded("anim@heists@keycard@") do
--         Citizen.Wait(1)
--     end
--     local ped = PlayerPedId()

--     TaskPlayAnim(ped, "anim@heists@keycard@", "exit", 8.0, 8.0, 1000, 1, 1, 0, 0, 0)
--     Citizen.Wait(1000)
--     ClearPedTasks(ped)
--     TriggerServerEvent("almez-motels:server:toggleDoor", motelId, doorId, not almez[motelId].doors[doorId].locked)
-- end

function ToggleStash(motelId, doorId)
    -- RequestAnimDict("creatures@rottweiler@tricks@")
    -- while not HasAnimDictLoaded("creatures@rottweiler@tricks@") do
    --     Citizen.Wait(1)
    -- end
    -- local ped = PlayerPedId()

    -- TaskPlayAnim(ped, "creatures@rottweiler@tricks@", "petting_franklin", 8.0, 8.0, 5000, 1, 1, 0, 0, 0)
    Citizen.Wait(1000)
    -- ClearPedTasks(ped)
    TriggerServerEvent('almez-motels:server:toggleStash', motelId, doorId, not almez[motelId].stashes[doorId].locked)
end

function MetaDoorLock(motelidqb)
    for i = 1, #almez, 1 do
        for x = 1, #almez[i].doors, 1 do
            local ped = PlayerPedId()
            local playercoords = GetEntityCoords(ped)

            if GetDistanceBetweenCoords(playercoords, almez[i].doors[x].coords, true) <= 1.2 then
                motelidqb = tostring(motelidqb)
                motelid = tostring(i)
                if motelidqb == motelid then
                    ToggleDoor(i, x)
                else
                    exports['mythic_notify']:DoHudText('error', 'Bu anahtar bu odanin değil')
                end
            end
        end
    end

    for y = 1, #almez, 1 do
        for z = 1, #almez[y].stashes, 1 do
            local ped = PlayerPedId()
            local playercoords = GetEntityCoords(ped)

            if GetDistanceBetweenCoords(playercoords, almez[y].stashes[z].coords, true) <= 1.2 then
                motelidqb = tostring(motelidqb)
                motelid = tostring(y)
                if motelidqb == motelid then
                    ToggleStash(y, z)
                else
                    exports['mythic_notify']:DoHudText('error', 'Bu anahtar bu deponun değil')
                end
            end
        end
    end
end

function MetaStashLock()
    for i = 1, #almez , 1 do
        for x = 1, #almez[i].stashes, 1 do
            local ped = PlayerPedId()
            local playercoords = GetEntityCoords(ped)
            if GetDistanceBetweenCoords(playercoords, almez[i].stashes[x].coords, true) <= 1.2 then
                ESX.TriggerServerCallback('almez-motels:getQuantity', function(quantity)
                    if quantity > 0 then
                        ESX.TriggerServerCallback('almez-motels:getKeyQB', function(info)
                            if info == i then
                                ToggleStash(i, x)
                            else
                                exports.mythic_notify:DoHudText("error", "Bu anahtar bu deponun değil")
                            end
                        end, 'motelkeys')
                    else
                        exports['mythic_notify']:DoHudText('error', 'Yanında anahtar yok')
                    end
                end, 'motelkeys')
            end
        end
    end
end

function CanOpenStash()
    for i = 1, #almez, 1 do
        for x = 1, #almez[i].stashes, 1 do
            local ped = PlayerPedId()
            local playercoords = GetEntityCoords(ped)

            if GetDistanceBetweenCoords(playercoords, almez[i].stashes[x].coords, 1) <= 1.2 then
                if not almez[i].stashes[x].locked then
                    OpenStash(i, x)
                else
                    exports.mythic_notify:DoHudText("error", 'Depo kilitli!')
                end
            end
        end
    end
end

function OpenStash(motelId, stashId)
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "Ev_"..motelId.."_"..stashId)
        TriggerEvent("inventory:client:SetCurrentStash", "Ev_"..motelId..'_'..stashId)
end

function OpenStash2(motelId)
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "Ev_"..motelId.."_"..stashId)
        TriggerEvent("inventory:client:SetCurrentStash", "Ev_"..motelId..'_'..stashId)
end

function OpenEstate()
    estateOpen = true
    Citizen.CreateThread(function()
        while estateOpen do
            DisableControl()
            Citizen.Wait(1)
        end
    end)
    local elements = {}
    local hasMotel = false
    for i = 1, #OwnedMotels, 1 do
        if OwnedMotels[i].motelId > 0 then
            hasMotel = true
            break
        end
    end

    if not hasMotel then
        elements = {{label = 'Oda Satın Al', value = 1}}
    elseif hasMotel then
        elements = {{label = 'Evini Sat', value = 2}}
    end

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', 'almez-motels', 'estate-menu', {
        title = 'Resepsiyon',
        align = 'top-right',
        elements = elements
    }, function(data, menu)
        if data.current.value == 1 then
            BuyMotel(motelId)
        elseif data.current.value == 2 then
            SellMotel(motelId)
        end
    end, function(data, menu)
        estateOpen = false
        menu.close()
    end)
end

function BuyMotel(motelId)
    ESX.TriggerServerCallback('almez-motels:server:getEmptyMotel', function(result)
        if result ~= false then
            ESX.UI.Menu.CloseAll()
            ESX.UI.Menu.Open('default', 'almez-motels', 'buy-sell', {
                title = 'Odalar',
                align = 'top-right',
                elements = result
            }, function(data, menu)
                local x = data.current
                if x.motelId ~= nil then
                    ESX.UI.Menu.Open('default', 'almez-motels', 'buy-sure', {
                        title = 'Emin Misin ?',
                        align = 'top-right',
                        elements = {{label = 'Evet', value = true}, {label = 'Hayır', value = false}}
                    }, function(data2, menu2)
                        if data2.current.value == true then
                            ESX.UI.Menu.CloseAll()
                            estateOpen = false
                            TriggerServerEvent('almez-motels:server:buyMotel', x.motelId)
                        else
                            menu2.close()
                        end
                    end, function(data2, menu2)
                        menu2.close()
                    end)
                end
            end, function(data, menu)
                estateOpen = false
                menu.close()
            end)
        elseif not result then
            exports.mythic_notify:DoHudText("error", 'Boş oda kalmamış')
        end
    end)
end

function SellMotel(motelId)
    local elements1 = {}
    for i = 1 , #OwnedMotels, 1 do
        table.insert(elements1, {label = OwnedMotels[i].motelId .. ' numaralı odani sat', motelId = OwnedMotels[i].motelId})
    end
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', 'almez-motels', 'sell', {
        title = 'Evlerin',
        align = 'top-right',
        elements = elements1
    }, function(data, menu)
        local x = data.current
        if x.motelId ~= nil then
            ESX.UI.Menu.Open('default', 'almez-motels', 'sell-sure', {
                title = 'Emin Misin ?',
                align = 'top-right',
                elements = {{label = 'Evet', value = true}, {label = 'Hayır', value = false}}
            }, function(data2, menu2)
                        if data2.current.value == true then
                            ESX.TriggerServerCallback('almez-motels:getQuantityQB', function(amount)
                                if amount > 0 then
                                    ESX.TriggerServerCallback('almez-motels:getMotelOwned', function(motel)
                                        local motel = tostring(motel)
                                        local motelid = tostring(x.motelId)
                                        if motel == motelid then
                                            ESX.UI.Menu.CloseAll()
                                            estateOpen = false
                                            TriggerServerEvent('almez-motels:server:sellMotel', x.motelId)
                                        else
                                            print("Odada bir sorun var!")
                                        end
                                    end)
                                else
                                    exports['mythic_notify']:DoHudText('error', 'Anahtarı teslim etmeden odani satamazsın')
                                end
                            end, 'motelkeys')
                        else
                            menu2.close()
                        end
                end, function(data2, menu2)
                    menu2.close()
                end)
            end
        end, function(data,menu)
            estateOpen = false
            menu.close()
    end)
end

function DrawText3D(x,y,z,text,size)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local factor = (string.len(text)) / 370
    SetTextScale(0.30, 0.30)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    DrawRect(_x, _y + 0.0120, 0.006 + factor, 0.024, 0, 0, 0, 155)
end

function DisableControl()
    DisableControlAction(0, 73, false) 
    DisableControlAction(0, 24, true) 
    DisableControlAction(0, 257, true)
    DisableControlAction(0, 25, true) 
    DisableControlAction(0, 263, true) 
    DisableControlAction(0, 32, true) 
    DisableControlAction(0, 34, true) 
    DisableControlAction(0, 31, true) 
    DisableControlAction(0, 30, true) 
    DisableControlAction(0, 45, true) 
    DisableControlAction(0, 22, true) 
    DisableControlAction(0, 44, true) 
    DisableControlAction(0, 37, true) 
    DisableControlAction(0, 23, true) 
    DisableControlAction(0, 288, true) 
    DisableControlAction(0, 289, true) 
    DisableControlAction(0, 170, true) 
    DisableControlAction(0, 167, true) 
    DisableControlAction(0, 73, true) 
    DisableControlAction(2, 199, true) 
    DisableControlAction(0, 47, true) 
    DisableControlAction(0, 264, true) 
    DisableControlAction(0, 257, true) 
    DisableControlAction(0, 140, true) 
    DisableControlAction(0, 141, true)
    DisableControlAction(0, 142, true) 
    DisableControlAction(0, 143, true) 
end

function Teleport(i, f)
    currentfloor = f
    DoScreenFadeOut(500)
    Citizen.Wait(600)
    PlaySoundFrontend(-1, "OPENING", "MP_PROPERTIES_ELEVATOR_DOORS" , 1)
    SetEntityCoords(PlayerPedId(), elevators[i][f].x, elevators[i][f].y, elevators[i][f].z, 1, 0, 0, 0)
    Citizen.Wait(200)
    DoScreenFadeIn(500)
end

function StartElevatorsCheck()
    Citizen.CreateThread(function()
        while true do
            local pedcoords = GetEntityCoords(PlayerPedId())

            for i = 1, #elevators, 1 do
                if GetDistanceBetweenCoords(elevators[i][1].x, elevators[i][1].y, elevators[i][1].z, pedcoords, false) <= 50.0 then
                    if currentfloor == nil then
                        for f = 1, #elevators[i], 1 do
                            if GetDistanceBetweenCoords(elevators[i][f].x, elevators[i][f].y, elevators[i][f].z, pedcoords, true) <= 3.0 then
                                DrawMarker(1, elevators[i][f].x, elevators[i][f].y, elevators[i][f].z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, 0.8, 236, 236, 80, 155, false, false, 2, false, 0, 0, 0, 0)
                                if GetDistanceBetweenCoords(elevators[i][f].x, elevators[i][f].y, elevators[i][f].z, pedcoords, true) <= 1.0 and IsControlJustReleased(0, 38) then
                                    OpenElevator(i, f)
                                end
                            end
                        end
                    else
                        if GetDistanceBetweenCoords(elevators[i][currentfloor].x, elevators[i][currentfloor].y, elevators[i][currentfloor].z, pedcoords, true) <= 3.0 then
                            DrawMarker(1, elevators[i][currentfloor].x, elevators[i][currentfloor].y, elevators[i][currentfloor].z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, 0.8, 236, 236, 80, 155, false, false, 2, false, 0, 0, 0, 0)
                            if GetDistanceBetweenCoords(elevators[i][currentfloor].x, elevators[i][currentfloor].y, elevators[i][currentfloor].z, pedcoords, true) <= 1.0 and IsControlJustReleased(0, 38) then
                                OpenElevator(i, currentfloor)
                            end
                        end
                    end
                end
            end
            Citizen.Wait(1)
        end
    end)
end

function OpenElevator(i, f)
    local el = {}
    for a = 1, #elevators[i], 1 do
        if a ~= f then
            table.insert(el, {label = "Kat-"..a, floor = a})
        end
    end
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open("default", "almez-motels", "elevator", {
        title = "Rezidans-"..f,
        align = "top-left",
        elements = el
    }, function(data, menu)
        if data.current.floor ~= nil then
            ESX.UI.Menu.CloseAll()
            Teleport(i, data.current.floor)
        end
    end, function(data, menu)
        menu.close()
    end)
end

    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]