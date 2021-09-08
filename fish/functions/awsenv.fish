function awsenv --argument-names profile
    if ! type -q aws-vault
        return 2
    else if test -z $profile
        return 1
    end

    printf "> Switching profile to '%s'...\n" $profile 1>&2

    __awsenv_disconnect 2>/dev/null

    set output (aws-vault exec --duration=1h "$profile" -- env)
    if [ "$status" -eq 0 ]
        eval (printf "export %s\n" $output | grep "^export AWS_")
        set -gx AWS_PROFILE "$profile"
        echo 1>&2
        return $status
    else
        return 1
    end
end
