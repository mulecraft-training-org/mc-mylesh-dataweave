%dw 2.0
output application/json
---
flatten(flatten(flatten(flatten(payload))))
