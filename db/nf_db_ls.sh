nf_function nf_db_ls database "List all databases"
function nf_db_ls() {
  nf_db -t -c "SELECT datname FROM pg_database WHERE datistemplate = false AND datname <> 'postgres' ORDER BY datname" | tr -s '\n' | sed 's/^ *//'
}
