%dw 2.0
import * from dw::util::Coercions
import * from dw::Runtime
output application/json

---

((payload filter(item) -> item.marks !=[])  map ({
    name: $.name,
    marks : $.marks map(item) -> if(item==null) 0  else item,
    attendance : $.attendance,
    avg: toNumber((( ($.marks map(item) -> if(item==null) 0  else item) 
                    reduce ((item, acc=0) -> item + acc )) / sizeOf($.marks)) as String {format: "0.00"} )
}) ) filter ((item) -> !((item.attendance) <= 75))


// Check if the marks array is empty for any student if empty then skip it
// Replace null values in the marks array with 0 
// Calculate the average marks for each student and convert in to number format
// Exclude students with attendance less than 75%.

