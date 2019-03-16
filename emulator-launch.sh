cd C:/Users/Nimda/AppData/Local/Android/Sdk/tools
  emulator -list-avds | cat -n
  printf "Select Device to work in it: "
  read index
  device=$(emulator -list-avds | sed "${index}q;d")
  echo "Selected $device"
  emulator -netdelay none -netspeed full -avd $device &disown &exit