%dw 2.0
output application/json
---
{
    "Square" : payload.number pow 2
}
