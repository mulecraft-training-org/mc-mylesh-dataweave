%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload divideBy 2

//Breaks up an array into sub-arrays by given value
