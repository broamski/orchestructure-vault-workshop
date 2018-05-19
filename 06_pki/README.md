# 06 - PKI

- `vault secrets enable pki`
- `vault secrets tune -max-lease-ttl=8760h pki`
- `vault write pki/root/generate/internal common_name=dontworry.com ttl=8760h`
- `vault write pki/roles/enduser allowed_domains=dontworry.com allow_subdomains=true max_ttl=720h key_bits=4096`


#### End-User Policy
```
path "pki/issue/enduser" {
  capabilities = ["update   "]
}
```

- `vault write pki/issue/enduser common_name=www.google.com`
- `vault write pki/issue/enduser common_name=whatever.dontworry.com`