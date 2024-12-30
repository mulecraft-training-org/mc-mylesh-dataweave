%dw 2.0
output application/json
---
(payload.value1) zip (payload.value2)

//left side value will come first in result of array
//right side value will come second in result of array
