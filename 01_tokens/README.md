# Lesson 1 - Tokens

#### Authenticate
1. `export VAULT_ADDR=https://vault.bnuz.co:8200` (`set` for WIN users)
2. `vault login -method=userpass username=orchestructure password=thisisapassword`

#### Inspect your current token
- `vault token lookup`
- `echo ~/.vault-token`

#### Write and Read Some Things
- `vault read secret/orchestructure`
- `vault write secret/orchestructure/YOURVALUE foo2=bar private_key="anything you want"`
- `vault write secret/orchestructure/YOURVALUE foo=bar private_key="anything you want"`

#### Create Tokens
- vault token create
    - -ttl=1m
    - -use-limit=2
    - -metadata=username=blah
    - -display-name=person
    - -policy=default
    - -orphan

- `vault token create -policy=orchestructure -display-name=subtoken`
- `vault token create -policy=orchestructure -display-name=subtoken -ttl=60s`
- `VAULT_TOKEN=TOKEN vault kv get secret/orchestructure`
- `vault token create -policy=orchestructure -display-name=subtoken -use-limit=2`
- `VAULT_TOKEN=TOKEN vault kv get secret/orchestructure` (x2)

#### Revoke Tokens
- `vault token revoke -self`
- `vault token revoke <token>` (root only)