%dw 2.0
output application/json
---
{
    "random" : random() * 100
}

//It gives random number between 0.0 to 1.0
