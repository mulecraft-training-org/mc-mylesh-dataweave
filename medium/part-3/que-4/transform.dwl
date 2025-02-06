%dw 2.0
output application/json
---
payload filterObject ((value, key) -> (!isEmpty(value)) )

//Remove Empty values
