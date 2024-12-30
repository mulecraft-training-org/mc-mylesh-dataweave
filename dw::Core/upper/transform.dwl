%dw 2.0
output application/json
---
payload mapObject 
((value, key, index) -> (upper(key)) : (upper(value)) )
