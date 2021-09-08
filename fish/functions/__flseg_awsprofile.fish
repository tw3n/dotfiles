function __flseg_awsprofile
    if set -q AWS_PROFILE
        __fishline_segment ffcc66 393939
        echo -n $AWS_PROFILE
    end
end
