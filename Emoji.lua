local Owner = {
413127102,
1907648884,
3450165165,
1590948286,
2376306014
}--No One Here!

local url = game:HttpGet("https://raw.githubusercontent.com/WeirdcoreDreamcore/NanyEresLaMejor/main/pineapple")
local success, err = pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character then
            if table.find(Owner,v.UserId) then
                v.Character.Humanoid.DisplayName = "[👑]"..v.DisplayName
            elseif string.find(url,v.UserId) then
                v.Character.Humanoid.DisplayName = "[⭐]"..v.DisplayName
            elseif not v.Character.Head:FindFirstChild("OriginalSize") then
                v.Character.Humanoid.DisplayName = "[🥭]"..v.DisplayName
            end
        end
    end
end)
