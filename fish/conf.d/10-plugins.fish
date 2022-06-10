# fishline
if test -f "$FISH_PLUGIN_PATH/fishline/init.fish"
    set FLINE_PATH $FISH_PLUGIN_PATH/fishline
    source $FLINE_PATH/init.fish
end

# z
if test -f "$FISH_PLUGIN_PATH/z/conf.d/z.fish"
    set -a fish_function_path "$FISH_PLUGIN_PATH/z/functions"
    set -U Z_DATA $XDG_DATA_HOME/z/db
    set -U Z_DATA_DIR $XDG_DATA_HOME/z
    set -U Z_CMD j
    source "$FISH_PLUGIN_PATH/z/conf.d/z.fish"
end
