local awful = require("awful")

local helpers = {}

helpers.volume_control = function(step)
  local cmd
  local sign
  if step == 0 then
    cmd = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
  else
    sign = step > 0 and "+" or "-"
    if step < 0 then step = step * -1 end
    cmd = "wpctl set-volume @DEFAULT_AUDIO_SINK@ "
          .. tostring(step)
          .. "%"
          .. sign
  end
  awful.spawn.with_shell(cmd)
    
end

return helpers
