%dw 2.0
output application/json
---
{
    name: isBlank(payload.name),
    age: isBlank(payload.age),
    dob: isBlank(payload.dob)
}
