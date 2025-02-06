%dw 2.0
output application/json
---
(payload [-1 to 0]) reduce ((item, acc) ->item ++ acc )
