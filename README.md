![ActivateAlarm Banner](https://i.ibb.co/zX2nRWw/Activate-Alarm.png)

# ActivateAlarm
A FiveM resource used to activate a custom alarm sound in an area coded in C#. This uses another resource called PlayCustomSounds, a standalone resource used to play external sounds.

The alarm included as part of the installation is a British security alarm with a length of 4 seconds. This is played on a loop upon alarm activation.
This may be changed, however must be named "alarm" in an ogg format and be at a length of 4 seconds.
## Usage
In game, use **/alarm** to activate the alarm. The distance is not changeable and is set at 30.0. This is a good distance to cover most locations in game, including stores, nightclubs and more.
To deactivate the alarm, use **/alarm.**

## Installation
1. Create a new folder in server resources named "activatealarm". Inside the folder place the "Client.net.dll" and "fxmanifest.lua".
2. In server.cfg, add "ensure activatealarm" or "start" if on an older server version.
3. Ensure you have PlayCustomSounds installed on the server. Download [here](https://github.com/LondonStudios/PlayCustomSounds).

## PlayCustomSounds
In the "Sound" folder in master, you will find the "alarm.ogg" file. This needs to be placed in html/sounds/ location in the PlayCustomSounds resource.

## Errors and Bugs
There are no recorded errors or bugs at this time, however create a pull request or create an Issue if you encounter any, and they will be resolved.
Suggestions are also highly appreciated.

## Licence
### GNU General Public License v3.0
Please see the licence file for more information.
