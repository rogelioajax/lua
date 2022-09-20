print("▬▬ι═══════ﺤ")
print("▬▬ι═══════ﺤ")
print("ඞ ඞ ඞsusඞ ඞ ඞ")
if not writefile or not readfile then 
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
          Title = 'Warning!';
          Text = 'Your executor does not support Mango Premium. Use executor level 7 or 8.';
          Duration = 100;
          Icon = "rbxassetid://6525527344";
        })
      end)
    return else 
            print("Executor Supported :D") 
    end
