# 07 - API


`curl -X POST -H "X-Vault-Token: $(cat ~/.vault-token)" -d '{"this": "that"}' ${VAULT_ADDR}/v1/orchestructure/thing`

`curl -H "X-Vault-Token: $(cat ~/.vault-token)" ${VAULT_ADDR}/v1/orchestructure/thing`

`curl -X LIST -H "X-Vault-Token: $(cat ~/.vault-token)" ${VAULT_ADDR}/v1/orchestructure/`