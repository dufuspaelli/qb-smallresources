local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['testwebhook'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['playermoney'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['playerinventory'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['robbing'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['cuffing'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['drop'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['trunk'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['stash'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['glovebox'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['banking'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['vehicleupgrades'] = '',
    ['shops'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['dealers'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['storerobbery'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['powerplants'] = '',
    ['death'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['joinleave'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['ooc'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['report'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['anticheat'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['weather'] = '',
    ['moneysafes'] = '',
    ['bennys'] = '',
    ['bossmenu'] = '',
    ['robbery'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['casino'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = 'https://discord.com/api/webhooks/951275834516316200/AA-equMl-FT4BIKpZTrF15qZy_vFEUvjxe-pk5rSjJoHzXi8E_b9lT2DPmEg3jGqgUpR',
    ['house'] = '',
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
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function(source, args)
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
