function __flseg_awsprofile
    if set -q AWS_PROFILE
        __fishline_segment d18ff0 393939
        printf "\uf0c2 %s" "$AWS_PROFILE($AWS_REGION)"
    end
end
