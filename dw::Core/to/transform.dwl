%dw 2.0
output application/json
---
{
    "reverse" : payload [-1 to 0],
    "range" : payload [2 to 6],
    "rangeOfNumber" : [0 to 10]
}
