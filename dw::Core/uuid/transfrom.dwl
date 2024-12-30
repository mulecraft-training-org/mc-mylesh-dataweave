%dw 2.0
output application/json
---
{
    "Name" : payload.name,
    "Age" : payload.age,
    "ID" : uuid() 
}

//This uuid() function will generate the random uuids on every refresh
