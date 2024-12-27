%dw 2.0
output application/json
---
"NumberOfArray" : sizeOf(payload)
