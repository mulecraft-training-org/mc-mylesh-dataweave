%dw 2.0
output application/json
---
(1 to payload[0]) map $*randomInt(10)

//Generate Random Numbers
