get_user_permissions() {

    ls_output=$(ls -l "$1")

    user_permissions=$(echo "$ls_output" | awk '{print $1}' | cut -c 1-3)

    echo "$user_permissions"
}

get_user_permissions
