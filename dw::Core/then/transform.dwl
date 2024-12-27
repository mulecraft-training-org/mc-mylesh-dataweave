%dw 2.0
output application/json
---
payload reduce ((item, acc) -> acc ++ item )
         then ((result) -> sizeOf(result) )

//then is used to performs the result of previous condition 
//if the result of previous condition not null then we can use it
