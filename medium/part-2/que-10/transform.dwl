%dw 2.0
output application/json
---
payload.a filter (payload.b contains $)

//Filter Values present in both array
