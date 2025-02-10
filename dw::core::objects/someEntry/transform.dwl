%dw 2.0
import * from dw::core::Objects
output application/json
---
payload someEntry ((value, key) -> value is String)

//Returns true if at least one entry in the object matches the specified condition.
