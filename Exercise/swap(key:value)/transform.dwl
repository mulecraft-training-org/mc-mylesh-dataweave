%dw 2.0
output application/json
---
payload map ((item, index) -> item mapObject ((value, key, index) -> 
(value) : key
))

