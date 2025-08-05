set -x ANDROID_HOME $HOME/Android/Sdk
if test -d $ANDROID_HOME
  fish_add_path -P $ANDROID_HOME/emulator
  fish_add_path -P $ANDROID_HOME/platform-tools
  fish_add_path -P $ANDROID_HOME/tools/bin
  set -x ANDROID_SDK_ROOT $ANDROID_HOME
end
