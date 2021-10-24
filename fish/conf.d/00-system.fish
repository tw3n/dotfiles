set -gx FISH_CONFIG_PATH $HOME/.config/fish
set -gx fish_function_path $FISH_CONFIG_PATH/alias $fish_function_path
set -gx fish_function_path $FISH_CONFIG_PATH/functions $fish_function_path

# fishline
set FLINE_PATH $FISH_CONFIG_PATH/fishline
source $FLINE_PATH/init.fish
