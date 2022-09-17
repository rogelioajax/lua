DataBase = "Mango Hub vPremium | Data Base Loaded"
print(DataBase)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

spawn(function()
    game.RunService.RenderStepped:Connect(function()
        game.Players.LocalPlayer.MaximumSimulationRadius = 1000;
        setsimulationradius(1000,1000)
    end)
end)
