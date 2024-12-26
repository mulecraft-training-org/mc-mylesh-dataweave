%dw 2.0
output application/json
---
payload map({
    "Name" : $.name,
    "EmailId" : flatten($.email scan(/([a-z]*).([a-z]*).([a-z]*)/))
})

//It will scan the value by regex format and it ewill return in array of array so we are using flatten.
// "." will split the scan according to regex 
