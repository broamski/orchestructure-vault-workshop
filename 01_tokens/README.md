# Lesson 1 - Tokens

#### Authenticate
1. `export VAULT_ADDR=https://vault.bnuz.co:8200` (`set` for WIN users)
2. `vault login -method=userpass username=orchestructure password=thisisapassword`

#### Inspect your current token
- `vault token lookup`
- `vault token lookup -accessor <grab accessor from previous command>`
- `echo ~/.vault-token`

#### Write and Read Some Things
- `vault read secret/orchestructure`
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
- `vault token create -policy=orchestructure -display-name=subtoken -ttl=10s`
- `VAULT_TOKEN=TOKEN vault read secret/tokentest (until time up)`
- `vault token create -policy=orchestructure -display-name=subtoken -use-limit=2`
- `VAULT_TOKEN=TOKEN vault read secret/tokentest (x2)`

#### Revoke Tokens
- `vault token revoke <token>`
- `vault token revoke -accessor <accessor>`
- `vault token revoke -self`