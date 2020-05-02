using System;
using CitizenFX.Core;
using CitizenFX.Core.Native;
using CitizenFX.Core.UI;
using System.Threading.Tasks;
using System.Collections.Generic;
using static CitizenFX.Core.Native.API;

namespace ActivateAlarm
{
    public class Main : BaseScript
    {
        private bool AlarmStatus;

        [Command("alarm")]
        private void AlarmController()
        {
            AlarmStatus = !AlarmStatus;
            Vector3 position = Game.Player.Character.Position;
            var status = "";
            if (AlarmStatus == true)
            {
                status = "~g~Activated";
            }
            else
            {
                if (AlarmStatus == false)
                    status = "~b~Deactivated";
            }
            Screen.ShowNotification("~r~Alarm Activation~s~:\nStatus: " + status);
            SoundAlarm(position);
        }

        private async void SoundAlarm(Vector3 position)
        {
            while (AlarmStatus == true)
            {
                TriggerServerEvent("Server:SoundToCoords", position.X, position.Y, position.Z, 30.0f, "alarm", 1.0f);
                await Delay(3800);
            }
            

        }

        /*© 2020 - London Studios - Do not redistibute, modify/change or reupload without my obtained permission. 
         * This may be used on public/private FiveM servers and used in videos published to websites, however the source files should not be redistributed. 
         * This is for non-commercial use.*/
    }
}
