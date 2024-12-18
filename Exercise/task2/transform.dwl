%dw 2.0
output application/json
 
---
payload map ({
    "name" : $.name,
    "daysWored" : daysBetween($.startDate,(if($.endDate==null) now() as String {format: "yyyy-MM-dd"}  else $.endDate ))
}) filter (item) -> ( (item.name[0] == "A" or item.name[0] ==  "B") and  item.daysWored > 100) 
