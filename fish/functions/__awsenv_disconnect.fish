function __awsenv_disconnect
    for i in (env | grep "AWS_" | cut -d"=" -f1)
        set -e "$i"
    end

    set -e AWS_PROFILE
    set -e AWS_VAULT

    return 0
end
