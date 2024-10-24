%dw 2.0
output application/json
---
payload flatMap ((value, index) -> value)
