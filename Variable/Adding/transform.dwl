%dw 2.0
output application/json
---
{
    "Fullname" : payload.fistname ++ " " ++    payload.lastname,
    "Email": payload.email
}
