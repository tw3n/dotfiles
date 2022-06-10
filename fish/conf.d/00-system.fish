set -gx FISH_CONFIG_PATH $HOME/.config/fish
set -gx FISH_PLUGIN_PATH $FISH_CONFIG_PATH/plugins

set -p fish_function_path $FISH_CONFIG_PATH/alias
set -p fish_function_path $FISH_CONFIG_PATH/functions
