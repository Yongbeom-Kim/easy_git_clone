line_to_write=$@

append_to_file() {
    file=$1
    line=$2

    if [ -f "$file" ]; then 
        if ! grep -Fxq "$line" "$file"; then
            echo "$line" >> "$file"
        fi
    fi
}

append_to_file "$HOME/.profile" "$line_to_write"
append_to_file "$HOME/.bashrc" "$line_to_write"
append_to_file "$HOME/.zshrc" "$line_to_write"