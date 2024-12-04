%dw 2.0
output application/json
---
payload.email match  (/^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}$/)

//if it match it will return the value in array of string
