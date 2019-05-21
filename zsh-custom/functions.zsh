# Custom function definitions for zsh

# Execute godot commands
function godot() {
    "$GODOT_EXEC_PATH" --path $(pwd) $*
}

# Runs godot unit tests
function gut() {
    godot --debug-collisions -s addons/gut/gut_cmdln.gd $*
}

# Runs specific gut test
function gut_specific() {
    gut -gtest=$1
}

# JSON pretty print
function prettyjson_f() {
    python -m json.tool $1
}
function prettyjson_s() {
    echo $1 | python -m json.tool
}
function prettyjson_w() {
    curl $1 | python -m json.tool
}

