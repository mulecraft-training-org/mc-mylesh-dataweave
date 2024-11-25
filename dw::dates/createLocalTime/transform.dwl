%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "createLocalTime" : localTime({ hour: 10,minutes: 50,seconds: 10})
}

// In this will not use time zone while creating the time 
