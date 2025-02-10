%dw 2.0
import * from dw::core::Objects
output application/json
---
mergeWith(payload,payload1)

//Appends any key-value pairs from a source object to a target object.
