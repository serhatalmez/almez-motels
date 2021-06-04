    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("almez:yedek")
AddEventHandler("almez:yedek", function(motelId)
        local xPlayer = ESX.GetPlayerFromId(source)
        local src = source
        local money = xPlayer.getMoney()
        local info = {}
        local result = exports.ghmattimysql:executeSync('SELECT `key` FROM almez_motels WHERE owner = @owner', {
            ['@owner'] = xPlayer.identifier
        })
        local motelId = result[1].key
        info.motel = motelId
        if money >= Cfg.Price then
        xPlayer.addInventoryItem('motelkeys', 1, false, info, motelId)
        xPlayer.removeMoney(Cfg.Price)
        TriggerClientEvent('inventory:client:ItemBox', src, ESX.GetItems()['motelkeys'], "add",1)
    else
        TriggerClientEvent('esx:showNotification', src, 'Yeterince Paran Yok; '.. Cfg.Price ..' $')
    end
end)

RegisterServerEvent("almez:getalmez")
AddEventHandler("almez:getalmez", function(cb)
    cb(almez)
end)

AddEventHandler('esx:playerLoaded', function(id, xPlayer)
    local result = exports.ghmattimysql:executeSync('SELECT `key` FROM almez_motels WHERE owner = @owner', {['@owner'] = xPlayer.identifier})
    local data = {}
    if result ~= nil then
        for i = 1, #result, 1 do
            local a = result[i].key
            table.insert(data, {motelId = tonumber(a)})
        end
    end
    TriggerClientEvent('almez:sendData', xPlayer.source, almez, data, xPlayer)
end)

RegisterServerEvent('almez-motels:server:toggleDoor')
AddEventHandler('almez-motels:server:toggleDoor', function(motelId, doorId, state)
    almez[motelId].doors[doorId].locked = state
    TriggerClientEvent('almez-motels:client:toggleDoor', -1, motelId, doorId, state)
    if state == not locked then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '' ..motelId..' numaralı kapı kilitlendi.'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = '' ..motelId..' numaralı kapı açıldı.'})
    end
end)

RegisterServerEvent('almez-motels:server:toggleStash')
AddEventHandler('almez-motels:server:toggleStash', function(motelId, doorId, state)
    almez[motelId].stashes[doorId].locked = state
    TriggerClientEvent('almez-motels:client:toggleStash', -1, motelId, doorId, state)
    if state == not locked then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '' ..motelId..'numaralı depo kilitlendi.'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = '' ..motelId..'numaralı depo kilidi açıldı.'})
    end
end)

RegisterServerEvent('almez-motels:server:buyMotel')
AddEventHandler('almez-motels:server:buyMotel', function(motelId)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local money = xPlayer.getMoney()
    local price = almez[motelId].info.price
    if money >= price then
       exports.ghmattimysql:execute('UPDATE almez_motels SET `owner` = @owner WHERE `key` = @key', {
            ['@owner'] = xPlayer.identifier,
            ['@key'] = motelId
        })
        xPlayer.removeMoney(price)
        TriggerClientEvent("almez-motels:updateOwnedMotels", xPlayer.source, motelId, true, ' numaralı odayı satın aldın')
        local info = {}
        info.motel = motelId
        xPlayer.addInventoryItem('motelkeys', 1, false, info)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Yeterli paran yok'})
    end
end)

RegisterServerEvent('almez-motels:server:sellMotel')
AddEventHandler('almez-motels:server:sellMotel', function(motelId)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local price = almez[motelId].info.price / 2
   exports.ghmattimysql:execute('UPDATE almez_motels SET `owner` = @newowner WHERE `key` = @key AND `owner` = @oldowner', {
        ['@newowner'] = '',
        ['@key'] = tostring(motelId),
        ['@oldowner'] = xPlayer.identifier
    })
    xPlayer.addMoney(price)
    TriggerClientEvent("almez-motels:updateOwnedMotels", xPlayer.source, motelId, false, ' numaralı odanı sattın')
        xPlayer.removeInventoryItem('motelkeys', 1)
end)

ESX.RegisterServerCallback('almez-motels:server:getEmptyMotel', function(source, cb)
    local result = exports.ghmattimysql:executeSync('SELECT * FROM almez_motels')
    local elements = {}
    for i = 1, #result, 1 do
        if result[i].owner:len() < 5 then
            local motelId = tonumber(result[i].key)
            table.insert(elements, {label = motelId .. ' numaralı odayı satın al', motelId = motelId})
        end
    end
    if #elements ~= 0 then
        cb(elements)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('almez-motels:getKey', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    local result = exports.ghmattimysql:executeSync('SELECT information FROM user_inventory2 WHERE name = @name AND item_id = @itemid', {
        ['@name'] = xPlayer.identifier,
        ['@itemid'] = "motelkeys"
    })

    local info = result[1].information
    cb(info)
end)

ESX.RegisterUsableItem('motelkeys', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    if Player.GetItemBySlot(item.slot) ~= nil then
        motelId = item.info.motel
        TriggerClientEvent('almez-motels:client:openDoor2', source, motelId)
    end
end)

ESX.RegisterServerCallback('almez-motels:getKeyQB', function(source, cb, item)
    local Player = ESX.GetPlayerFromId(source)
    if Player.GetItemBySlot(item.slot) ~= nil then
        cb(item.info.motel)
    else
        cb(false)
    end
end)

ESX.RegisterServerCallback('almez-motels:getQuantityQB', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    local amount = xPlayer.getQuantity('motelkeys')
    cb(amount)
end)

ESX.RegisterServerCallback('almez-motels:getMotelOwned', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local result = exports.ghmattimysql:executeSync('SELECT `key` FROM almez_motels WHERE owner = @owner', {
        ['@owner'] = xPlayer.identifier
    })
   print(result[1].key)
        cb(result[1].key)
    end)

RegisterCommand('odadevret', function(source, args, raw)
    local zplayer = ESX.GetPlayerFromId(args[1])
    local xPlayer = ESX.GetPlayerFromId(source)
    local result = exports.ghmattimysql:executeSync('SELECT `key` FROM almez_motels WHERE owner = @owner', {
        ['@owner'] = xPlayer.identifier
    })
    local motelId = result[1].key
        exports.ghmattimysql:execute('UPDATE almez_motels SET `owner` = @owner WHERE `key` = @key', {
            ['@key'] = motelId,
            ['@owner'] = zplayer.identifier
        })
    TriggerClientEvent('almez-motels:updateOwnedMotels2', xPlayer.source, motelId, true)
    TriggerClientEvent("almez-motels:updateOwnedMotels", zplayer.source, tonumber(motelId), true, ' numaralı odayı devir aldın')
end)

ESX.RegisterServerCallback("almez-motels:getMotelInventory", function(source, cb, motelId)
    if motelId == nil then
        return
    end
    cb({
        blackMoney = almez[motelId].info.data.blackmoney,
        items = almez[motelId].info.data.inventory,
        weapons = almez[motelId].info.data.weapons
    })
end)

RegisterServerEvent("almez-motels:putItem")
AddEventHandler("almez-motels:putItem", function(motelId, name, count, type)
    local xPlayer = ESX.GetPlayerFromId(source)

    if type == "item_standard" then
        local item = xPlayer.getInventoryItem(name)
            local motelitem = almez[motelId].info.data.getItem(name)
                if item.count >= count then
                    if ((motelitem.weight * count) + almez[motelId].info.data.currentweight) <= Cfg.MotelWeightLimit then
                        xPlayer.removeInventoryItem(name, count)
                        almez[motelId].info.data.addItem(name, count)
                    else
                        TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Dolabınızda bu kadar eşyaya yer yok!.", lenght = 6000})
                    end
                else
                    TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Bu eşyanın bu kadarına sahip değilsiniz.", lenght = 6000})
                end
    elseif type == "item_weapon" then
        local wep = xPlayer.hasWeapon(name)
        local motelweapon = almez[motelId].info.data.getWeapon(name)
                if wep then
                    if motelweapon.ammo == 0 then
                        if (motelweapon.weight + almez[motelId].info.data.currentweight) <= Cfg.MotelWeightLimit then
                            xPlayer.removeWeapon(name)
                            almez[motelId].info.data.addWeapon(name, count)
                        else
                            TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Bu silahı koymak için dolapta yer yok!.", lenght = 6000})
                        end
                            else
                                xPlayer.removeWeapon(name)
                                almez[motelId].info.data.addWeapon(name, count)
                            end
                    elseif not wep then
                        TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Üstünüzde bu silah bulunamadı.", lenght = 6000})
                    end
                elseif type == "item_account" then
                    local black = xPlayer.getAccount("black_money").money
            if black >= count then
                xPlayer.removeAccountMoney("black_money", count)
                almez[motelId].info.data.addBlack(count)
            else
                TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Üzerinizde bu kadar yok!.", lenght = 6000})
        end
    end
end)

RegisterServerEvent("almez-motels:pickItem")
AddEventHandler("almez-motels:pickItem", function(motelId, name, count, type)
    local xPlayer = ESX.GetPlayerFromId(source)

    if type == "item_standard" then
        local playeritem = xPlayer.getInventoryItem(name)
            local motelitem = almez[motelId].info.data.getItem(name)
            if motelitem.count >= count then
                if xPlayer.canCarryItem(name, count) then
                    xPlayer.addInventoryItem( name, count)
                    almez[motelId].info.data.removeItem(name, count)
                else
                    TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Bu eşyadan daha fazla taşıyamazsınız.", lenght = 6000})
                end
            else
                TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Evinizde bu kadar eşya yok!", lenght = 6000})
            end
    elseif type == "item_weapon" then
            local wep = xPlayer.hasWeapon(name)
            local motelweapon = almez[motelId].info.data.getWeapon(name)

            if wep then
                if motelweapon.ammo >= count then
                    xPlayer.addWeapon(name, motelweapon.ammo)
                    almez[motelId].info.data.removeWeapon(name, motelweapon.ammo)
                else
                    TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Evinizde bu kadar mühimmat yok!", lenght = 6000})
                end
            elseif not wep then
                if xPlayer.canCarryItem(name, 1) then
                    xPlayer.addWeapon(name, motelweapon.ammo)
                    almez[motelId].info.data.removeWeapon(name, motelweapon.ammo)
                else
                    TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Bu silahı taşıyamazsınız", lenght = 6000})
                end
            end
    elseif type == "item_account" then
        if almez[motelId].info.data.blackmoney >= almez[motelId].info.data.blackmoney - count then
            xPlayer.addAccountMoney("black_money", count)
            almez[motelId].info.data.removeBlack(count)
        else
            TriggerClientEvent("mythic_notify:client:SendAlert", xPlayer.source, {type = "error", text = "Evinizde bu kadar eşya yok!", lenght = 6000})
        end
    end
end)

ESX.RegisterServerCallback('almez-motels:checkItem', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    itemcount = xPlayer.getInventoryItem(item).count
    if itemcount > 0 then
        cb(true)
    else
        cb(false)
    end
end)

function GetItemWeight(name)
    for i = 1, #ItemData, 1 do
        if name == ItemData[i].name then
            return ItemData[i].weight
        end
    end
end

function GetItemInfo(name)
    for i = 1, #ItemData, 1 do
        if name == ItemData[i].name then
            return ItemData[i]
        end
    end
end

    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]