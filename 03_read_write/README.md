# 03 - Reading and Writing Generic Secrets

#### Read and Write secrets w/CLI
- `vault kv put orchestructure/app username=user password=XXXXXXX`
- `vault kv get orchestructure/app`
- `vault kv put orchestructure/app password=XXXXXXX`
- `vault kv get orchestructure/app`


#### Read and Write secrets w/payloads
`payload.json`
```
{
    "username": "test",
    "password": "securepassword"
}
```
- `vault kv put orchestructure/payload @payload.json`
- `vault kv get orchestructure/payload`