%dw 2.0
output application/json

 var dateTime= "2024-11-29T08:00:00" as DateTime

---
{
  "dateFormat" : dateTime as String {format: "yyyy-MM-dd" },
  "timeFormat" : dateTime as String {format: "hh:mm:ss a"},
  "dateTimeFormat": dateTime as String {format: "yyyy-MM-ss hh:mm:ss "} , 
  "change" : {format: dateTime >> "IST"}
}
