%dw 2.0
output application/json
---
{
    "Details" : {
        "Name" : payload.name,
        "Age" : payload.age,
        "DOB" : payload.dob
    },
    "IsLeapYear" : isLeapYear(payload.dob)
}
