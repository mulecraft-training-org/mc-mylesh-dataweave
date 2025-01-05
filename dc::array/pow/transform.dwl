%dw 2.0
output application/json
---
{
    "square" : (payload.number) pow  2
}
