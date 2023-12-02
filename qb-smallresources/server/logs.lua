local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = '',
    ['testwebhook'] = '',
    ['playermoney'] = 'https://discord.com/api/webhooks/1148065923413049406/3psPavv8gJfKuCPvmV-JFCg5kJ-mHy04jzBk-qSMUw35gQzZkLIo8pWZBVN-bwxxFgNC',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1148065923413049406/3psPavv8gJfKuCPvmV-JFCg5kJ-mHy04jzBk-qSMUw35gQzZkLIo8pWZBVN-bwxxFgNC',
    ['robbing'] = 'https://discord.com/api/webhooks/1148065923413049406/3psPavv8gJfKuCPvmV-JFCg5kJ-mHy04jzBk-qSMUw35gQzZkLIo8pWZBVN-bwxxFgNC',
    ['cuffing'] = '',
    ['drop'] = '',
    ['trunk'] = '',
    ['stash'] = '',
    ['glovebox'] = '',
    ['banking'] = '',
    ['vehicleshop'] = '',
    ['vehicleupgrades'] = '',
    ['shops'] = '',
    ['dealers'] = '',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1148067141778677870/DWMXbjTXesLWY5-cVtXq5vI00xeRZ5M_dqP5ipvGV5Sd-cyZztlBDZ28kqLv_KUaIrnW',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1148067141778677870/DWMXbjTXesLWY5-cVtXq5vI00xeRZ5M_dqP5ipvGV5Sd-cyZztlBDZ28kqLv_KUaIrnW',
    ['powerplants'] = '',
    ['death'] = '',
    ['joinleave'] = '',
    ['ooc'] = '',
    ['report'] = '',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/1148065923413049406/3psPavv8gJfKuCPvmV-JFCg5kJ-mHy04jzBk-qSMUw35gQzZkLIo8pWZBVN-bwxxFgNC',
    ['anticheat'] = 'https://discord.com/api/webhooks/1148065923413049406/3psPavv8gJfKuCPvmV-JFCg5kJ-mHy04jzBk-qSMUw35gQzZkLIo8pWZBVN-bwxxFgNC',
    ['weather'] = '',
    ['moneysafes'] = '',
    ['bennys'] = '',
    ['bossmenu'] = '',
    ['robbery'] = 'https://discord.com/api/webhooks/1148067141778677870/DWMXbjTXesLWY5-cVtXq5vI00xeRZ5M_dqP5ipvGV5Sd-cyZztlBDZ28kqLv_KUaIrnW',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = '',
    ['house'] = '',
    ['qbjobs'] = '',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name]+1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        local postData = { username = 'QB Logs', embeds = {} }

        for i = 1, #logQueue[name] do
            postData.embeds[#postData.embeds+1] = logQueue[name][i].data[1]
        end

        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })

        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = { username = 'QB Logs', embeds = {} }
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds+1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
