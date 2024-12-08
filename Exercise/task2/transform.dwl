%dw 2.0
output application/json


var today = now() as String {format : "yyyy-MM-dd"}
---
(payload map (item, indexArray) -> (item mapObject (value,key,index) -> { (key) : value default now() as String {format : "yyyy-MM-dd"} } ) ) 
map ({
    "name" : $.name,
    "daysWored" : daysBetween($.startDate,$.endDate)
}) filter (item) -> ( (item.name[0] == "A" or item.name[0] ==  "B") and  item.daysWored > 100) 

