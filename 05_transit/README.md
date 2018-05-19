# 05 - Transit Engine

- `vault secrets enable transit`
- `vault write -f transit/keys/test exportable=true allow_plaintext_backup=true type=rsa-4096`
- `vault list transit/keys`

#### Encrypt/Decrypt
- `vault write transit/encrypt/test plaintext=$(echo "supersecure" | base64)`
- `vault write transit/decrypt/test ciphertext=B64BLOB`
- `echo "B64STUFF" | base64 -D`

#### Random Byte Generation
- `vault write transit/random/40 format=base64`

#### Hashing
- `echo "hello" | base64`
- `vault write transit/hash/sha2-256 input=aGVsbG8K format=base64`

#### Signature Verification

- `echo "IMPORTANT INSTRUCTIONS" | base64`
- `vault write transit/sign/test/sha2-256 input=SU1QT1JUQU5UIElOU1RSVUNUSU9OUwo=`

- `vault write transit/verify/test/sha2-256 signature=SIG input=INPUT`

- `vault write transit/verify/test/sha2-256 signature=vault:v1:Q+GyvZppiYJYon8PIcf5zXSvPxp2OgtYe8G0AmF+Maq3XvHpUdXjKUTe/SaFu7DnuHyWhjS2W69rjB0DZTj9eHwGIIaxgs8GcwhHw22U1Uj0MRDapg1Jtl8ksI4qZKMJFRLC1H9uSxwBJp+mMTaJodm1wrlyKUUPiyEKBmDjmgVUDDbxTBtYJLqQiUQO5+4SetFgNjNslrRqepufT3UOkFXCKcah/TNHM79z/xi8cK9nTBDU0RBeVGlp+WMch4Aw/cGcX8LN/bVv9HSOb7VgKZn+hhYuhn41AaPzO++j3OhBcWBGEbPCLTl1KwV7PgGLS7buRtlclsSOE96IaJQmLFkV5t+H/7e9RlVwUQvIMmmUWJecvXQ3KjlXMYpHb8SUfLGO4jlOsr4NE9MIXVitLS/XrVnFkyACaNgR+FIyzBky6Rw8/2hFNFy4ynuPY2fLYquFtrc947xqfWIiyCKIehJ6ZdJCg55R+BLseDOsDNW8GBM5Hjqy7myPQHfW59MOsGDAfQmTsPjeA9CDJJ815kCywaq37ji3wosWSa/+76QunCE2UfeekwDfJFMXXRu8j4cQz9XzkAAkUoePope78ve7PaVcHGJh0fwTSAwAcrvMlpODYMXFPnnEUcc6NcKCpBzP/t5eGTrjTO/0h/+Xrqi4D33OhkMHJjWiFBzvO/U= input=SU1QT1JUQU5UIElOU1RSVUNUSU9OUwo=`