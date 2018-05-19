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
- `vault secrets enable -version=1 -path=orchestructure -description="Generic Secrets for Workshop" kv`


#### Unmound secret engine
- `vault secrets disable orchestructure/`