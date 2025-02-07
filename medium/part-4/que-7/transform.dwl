%dw 2.0
output application/json
---
(payload.url splitBy  /\//)[-1]
