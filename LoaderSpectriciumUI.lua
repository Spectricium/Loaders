local patched = {

}

local function notif(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "Exploit Spectricium UI",
		Text = str,
		Icon = "rbxassetid://10788696146",
		Duration = dur or 7
	})
end

local function notif2(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "Exploit Spectricium UI",
		Text = str,
		Icon = "http://www.roblox.com/asset/?id=10788696146",
		Duration = dur or 7
	})
end
function avise()
notif("The Script In This Game Its Patched Right Now")
    wait(3)
    game.Players.LocalPlayer:Kick()
   end
function correct()
notif("The Script Is Executing...")
    wait(3)
notif("Probably Loaded")
   end

if game.PlaceId == patched then
avise()
  else
  correct()
end
