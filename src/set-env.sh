SCRIPT_NAME=$(basename "$0")

prepare_args() {
	ARG_COUNT=$#
	ARG_NAMES=$@
}

check_args() {
	if [ $# -ne $ARG_COUNT ]; then
	        echo "Usage: ./$SCRIPT_NAME $ARG_NAMES"
	        exit 1
	fi
}
