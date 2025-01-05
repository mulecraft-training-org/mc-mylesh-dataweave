%dw 2.0
output application/json
---
{
    "Integer1" : isInteger(payload.integer1),
    "Integer2" : isInteger(payload.integer2),
    "Integer3" : isInteger(payload.integer3),
    "Integer4" : isInteger(payload.integer4)
}
