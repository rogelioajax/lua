coroutine.resume(coroutine.create(function()
    wait()
    game.StarterGui:SetCore("SendNotification", {
        Title = 'DISCORD';
        Text = 'Discord Server Copied to your clipboard!';
        Duration = 10;
    })
    setclipboard('https://discord.gg/5SRKGNqNrB')
end))
local Settings = {
            InviteCode = "5SRKGNqNrB"
        }
 
        local HttpService = game:GetService("HttpService")
        local RequestFunction
 
        if syn and syn.request then
            RequestFunction = syn.request
        elseif request then
            RequestFunction = request
        elseif http and http.request then
            RequestFunction = http.request
        elseif http_request then
            RequestFunction = http_request
        end
 
        local DiscordApiUrl = "http://127.0.0.1:%s/rpc?v=1"
 
        if not RequestFunction then
            return print("Your executor does not support http requests.")
        end
 
        for i = 6453, 6464 do
            local DiscordInviteRequest = function()
                local Request = RequestFunction({
                    Url = string.format(DiscordApiUrl, tostring(i)),
                    Method = "POST",
                    Body = HttpService:JSONEncode({
                        nonce = HttpService:GenerateGUID(false),
                        args = {
                            invite = {code = Settings.InviteCode},
                            code = Settings.InviteCode
                        },
                        cmd = "INVITE_BROWSER"
                    }),
                    Headers = {
                        ["Origin"] = "https://discord.com",
                        ["Content-Type"] = "application/json"
                    }
                })
            end
            spawn(DiscordInviteRequest)
        end
local placeid = game.PlaceId
if placeid == 2788229376 then
    print("Loaded!")
    else
        game:GetService("Players").LocalPlayer:Kick("Script ONLY FOR Da Hood!")   
    end
