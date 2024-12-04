%dw 2.0
output application/json
---
payload.email matches (/^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}$/)

//if it matches the value it will return in value boolean 
