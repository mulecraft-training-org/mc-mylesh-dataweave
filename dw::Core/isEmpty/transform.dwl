%dw 2.0
output application/json
---
{
    "name" : isEmpty(payload.name),
    "email" : isEmpty(payload.email)
}

//it return true if the value does not contain any value or space
