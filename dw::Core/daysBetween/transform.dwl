%dw 2.0
output application/json

---
{
  "daysDifferent" : daysBetween(payload.dob[1],payload.dob[0])
}
