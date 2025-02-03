%dw 2.0
output application/json
---
(payload filter ((item, index) -> (item.city=="hyd"))).name joinBy  ","

//"abc,abc1"
