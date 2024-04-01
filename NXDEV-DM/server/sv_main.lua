--------------------------------------------------------------------
--2024-04-01--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-01--
--------------------------------------------------------------------

--COMMAND NOTIFICATION = [iNotificationV3]
---------------------------------------------
RegisterCommand('msg', function (source, args, rawCommand)
    if args[1] and tonumber(args[1]) then
        local SName = GetPlayerName(source)
        local TName = GetPlayerName(tonumber(args[1]))
        local msg = table.concat(args, " ",2)
        if msg == "" then 
        TriggerClientEvent("iNotificationV3:showNotification", source, "Message ~r~invalide.", 3, "left");
        else
        TriggerClientEvent("iNotificationV3:showAdvancedNotification", tonumber(args[1]), "Message STAFF", "~r~"..GetPlayerName(source).."", ""..msg.."", "CHAR_MARTIN", 10, "left"); 
        end
        if Config.msgtodiscord then
            sendToDiscord("Message privée",'***Joueur:*** '..GetPlayerName(tonumber(args[1]))..'\n***Envoyer par:*** '..GetPlayerName(source)..'\n***Message:*** '..msg)
        end
    end
end, true)
---------------------------------------------


--Logs Discord 
---------------------------------------------
function sendToDiscord(name, message)
    if message == nil or message == '' then
        print(' Message was not set, therefor it wasn\'t sent')
        return
    end
    if discord_webhook == nil and discord_webhook == '' then
        print(' Discord webhook not set, therefore message wasn\'t sent')
        return
    end

    local embeds = { {
        ['title'] = '➡️ | Nouveau message-staff',
        ['type'] = 'rich',
        ['description'] = message,
        ['color'] = Config.webhookColor, --[[(Color code is in decimal)]]
        ['footer'] = {
            ['text'] = "🖥️ "..os.date("%d/%m/%Y"),
        }, } 
    }

    PerformHttpRequest(Config.webhook, function(err, text, headers) end, 'POST', json.encode({ username = name, embeds = embeds}), { ['Content-Type'] = 'application/json' })
end
