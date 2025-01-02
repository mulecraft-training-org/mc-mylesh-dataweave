%dw 2.0
output application/json
var maxMark= max(payload.markes)
---
{
    "Name" : payload.name,
    "Mark" : max(payload.markes),
    "Subject" : payload.subject[payload.markes indexOf max(payload.markes)]
}
