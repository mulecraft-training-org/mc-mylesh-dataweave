%dw 2.0
output application/json
---
(payload.arr1 ++ payload.arr2 )distinctBy ((item, index) -> item)

//Merge two array and remove duplicates
