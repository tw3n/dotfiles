function __flseg_awsprofile
    if set -q AWS_PROFILE
        __fishline_segment ffcc66 393939
        printf "\uf0c2 %s" "$AWS_PROFILE($AWS_REGION)"
    end
end
