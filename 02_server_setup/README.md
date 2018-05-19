# 02 - Server Setup

**Terminal 1**
- `vault server -config=config.hcl`

**Terminal 2**
- `export VAULT_ADDR=http://0.0.0.0:8200`
- `vault init -key-shares=3 -key-threshold=2`

- `vault operator unseal (repeat for threshold)`

- `echo -n "your root token" > ~/.vault-token`

#### Inspect Default Mounts

- `vault secrets list`
- `vault secrets list -format=json`
- `vault read -field=rules sys/policy/default`


#### Mount a secret engine
- `vault secrets enable -path=orchestructure -description="Generic Secrets for Workshop" kv`


#### Write secrets
- `vault write secret/app username=user password=XXXXXXX`
- `vault read secret/app`
- `vault write secret/app password=XXXXXXX`
- `vault read secret/app`

`payload.json`
```
{
    "username": "test",
    "password": "securepassword"
}
```
- `vault kv put secret/payload @payload.json`
- `vault kv get secret/payload`

#### Unmound secret engine
- `vault secrets disable orchestructure/`