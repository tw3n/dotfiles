function fish_right_prompt
    if [ "$CMD_DURATION" -ge 100 ]
        fishline -s 0 -r exectime
    end
end
