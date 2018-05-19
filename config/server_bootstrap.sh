vault policy write orchestructure orchestructure.policy
vault policy write default default.policy

vault audit enable file file_path=stdout log_raw=true

vault auth enable userpass
read -p "input vault user passsword: " VAULT_USERPASS_PASSWORD
vault write auth/userpass/users/orchestructure password=${VAULT_USERPASS_PASSWORD} policies=default,orchestructure

vault kv put secret/orchestructure value="hello class"
vault kv put -cas=1 secret/orchestructure value="hello class2"
vault kv get -version=1 secret/orchestructure
