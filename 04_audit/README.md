# 04 - Audit
- `vault audit enable file file_path=stdout hmac_accessor=false`


#### Options
- `format` (optional) Allows selecting the output format. Valid values are json (the default) and jsonx, which formats the normal log entries as XML.

- `log_raw` (optional) A string containing a boolean value ('true'/'false'), if set, logs the security sensitive information without hashing, in the raw format. Defaults to false.