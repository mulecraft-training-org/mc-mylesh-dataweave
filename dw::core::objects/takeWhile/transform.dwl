%dw 2.0
import * from dw::core::Objects
output application/json

---
payload takeWhile ((value, key) ->  value is Number)
