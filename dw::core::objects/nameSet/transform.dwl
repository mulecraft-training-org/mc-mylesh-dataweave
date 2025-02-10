%dw 2.0
import * from dw::core::Objects
output application/json
---
nameSet(payload)

//Returns keys of all fields in the object
