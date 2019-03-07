function whereami
    curl -sS "http://ip-api.com/json/" | jq "."
end
