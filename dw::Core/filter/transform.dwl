%dw 2.0
output application/json
---
payload.students filter ((value, index) -> value.age > 20)
