--Add your Discord Webhook ID below:
local enabled = true;
local webhookid = "ADD YOUR WEBHOOK ID HERE"

--London Studios - 2020
--Do not edit below this line
RegisterNetEvent("submitNotification")

AddEventHandler("submitNotification",function(identifier, location, time, status, colour)
    sendToDiscord(identifier, location, time, status, colour)
end)

function sendToDiscord(identifier, location, time, status, colour)
      local embed = {
            {
                ["fields"] = {
				    {
					    ["name"] = "**Status:**",
					    ["value"] = status,
					    ["inline"] = true
				    },
					{
					    ["name"] = "**Location:**",
					    ["value"] = location,
					    ["inline"] = true
				    },
				    {
					    ["name"] = "**Informant:**",
					    ["value"] = identifier,
					    ["inline"] = true
				    },
			    },
                ["color"] = colour,
                ["title"] = "**Alarm - Notification**",
                ["description"] = message,
                ["footer"] = {
                    ["text"] = "Timestamp: "..time,
                },
                ["thumbnail"] = {
                    ["url"] = "https://i.imgur.com/Bcx4SNY.png",
				},
			}
        }
  if enabled == true then
	PerformHttpRequest(webhookid, function(err, text, headers) end, 'POST', json.encode({username = "Yale Security", embeds = embed}), { ['Content-Type'] = 'application/json' })
  end
end

--            ? 2020 - London Studios - Do not modify/change source code obtained permission. 
--            This may be used on public/private FiveM servers and used in videos published to websites, 
--            This is for non-commercial use.