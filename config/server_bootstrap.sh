vault policy write orchestructure orchestructure.policy
vault policy write default default.policy

vault auth enable userpass
read -p "input vault user passsword: " VAULT_USERPASS_PASSWORD
vault write auth/userpass/users/orchestructure password=${VAULT_USERPASS_PASSWORD} policies=default,orchestructure
vault login -method=userpass username=orchestructure password=${VAULT_USERPASS_PASSWORD}

vault write secret/orchestructure value="hello class"