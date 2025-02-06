%dw 2.0
output application/json
---
(payload.name splitBy  " ") distinctBy ((item, index) ->item )
