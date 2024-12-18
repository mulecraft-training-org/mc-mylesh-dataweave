%dw 2.0
output application/json
 
---
payload map ({
    "name" : $.name,
    "daysWored" : daysBetween($.startDate,(if($.endDate==null) now() as String {format: "yyyy-MM-dd"}  else $.endDate ))
}) filter (item) -> ( (item.name[0] == "A" or item.name[0] ==  "B") and  item.daysWored > 100) 

// Calculate the duration between startDate and endDate. For null endDate, use today's date.
// Match employees whose names start with "A" or "B" 
// keep only employees who have worked more than 100 days.
// Format the calculated days to whole numbers
