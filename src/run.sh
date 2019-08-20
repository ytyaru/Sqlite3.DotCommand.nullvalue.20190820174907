SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: "values(NULL);"

sqlite3 :memory: \
".nullvalue '<NULL>'" \
"values(NULL);"

sqlite3 :memory: \
".nullvalue '<NULL>'" \
"values(NULL);" \
".nullvalue ''" \
"values(NULL);"

