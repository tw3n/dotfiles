function dctx --argument-names context
    printf "> Switching Docker context to '%s'...\n" $context 1>&2

    docker context use $context &>/dev/null

    return $status
end
