%dw 2.0
import * from dw::core::Objects
output application/json
---
entrySet(payload)

//Returns an array of key-value pairs that describe the key, value, and any attributes in the input object
