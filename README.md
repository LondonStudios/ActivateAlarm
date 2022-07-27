![London Studios](https://i.ibb.co/1mwSS1q/Untitled-design.png)

# London Studios - Update - https://store.londonstudios.net/github
Since forming London Studios in April 2020 we've created a number of **high quality** and **premium** resources for the FiveM project, focusing on the emergency services and aiming to bring your server to the next level.

Although we made a number of free resources such as this one in the first year, we've now switched to creating paid content, keeping them constantly updated and working along with providing the best possible support to our customers.

Our **most popular** resources now include *Smart Fires, Police Grappler* and *Smart Hose*.

With **thousands** of **happy customers** we are confident you'll love our resources and our active support team are on hand to help if you have any questions!

# Our store: https://store.londonstudios.net/github
# Our discord: https://discord.gg/nC2krpN

Therefore, this resource is now likely *out of date* and is *no longer supported by us*. The full source code is available should you wish to make any changes. All of our paid resources however are constantly updated and we invite you to take a look!

![ActivateAlarm Banner](https://i.ibb.co/zX2nRWw/Activate-Alarm.png)

# ActivateAlarm
A FiveM resource used to activate a custom alarm sound in an area coded in C#. This uses another resource called PlayCustomSounds, a standalone resource used to play external sounds. This resource integrates with Discord and sends notifications to a channel upon Alarm Activations or Deactivations.

The alarm included as part of the installation is a British security alarm with a length of 4 seconds. This is played on a loop upon alarm activation.
This may be changed, however must be named "alarm" in an ogg format and be at a length of 4 seconds.
## Usage
In game, use **/alarm** to activate the alarm. The distance is not changeable and is set at 30.0. This is a good distance to cover most locations in game, including stores, nightclubs and more.
To deactivate the alarm, use **/alarm.**

## Installation
1. Create a new folder in server resources named "activatealarm". Inside the folder place the "Client.net.dll", "notification.lua" and "fxmanifest.lua".
2. To enable Discord Integration, create a new Webhook on your server and select the channel. Open "notification.lua" and enter the Webhook ID at the top. If you do not want Discord Integration, set "enabled" to false at the top. Do not edit anything below. Recommended webhook image [here](https://i.imgur.com/Bcx4SNY.png).
3. In server.cfg, add "ensure activatealarm" or "start" if on an older server version.
4. Ensure you have PlayCustomSounds installed on the server. Download [here](https://github.com/LondonStudios/PlayCustomSounds).

![Discord Integration](https://i.imgur.com/EMR4gY9.png)

## PlayCustomSounds
In the "Sound" folder in master, you will find the "alarm.ogg" file. This needs to be placed in html/sounds/ location in the PlayCustomSounds resource.

## Errors and Bugs
There are no recorded errors or bugs at this time, however create a pull request or create an Issue if you encounter any, and they will be resolved.
Suggestions are also highly appreciated.

## Licence
### GNU General Public License v3.0
Please see the licence file for more information.
