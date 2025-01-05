%dw 2.0
output application/json
---
{
    "ceil" : ceil(1.1),
    "floor" : floor(1.5),
    "round" : round(1.5),
    "round1" : round(1.2)
}

// ceil - returns next whole number 
// floor - returns lower whole number
// round - returns the nearest whole number. 
