%dw 2.0
import * from dw::core::Objects
output application/json
---
payload everyEntry ((value, key) -> value is String)

//Returns 'true' if every entry in the object matches the condition if not returns 'false'
