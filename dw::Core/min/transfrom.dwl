%dw 2.0
output application/json
var minMark= min(payload.markes)
---
{
    "Name" : payload.name,
    "Mark" : min(payload.markes),
    "Subject" : payload.subject[payload.markes indexOf minMark]
}
