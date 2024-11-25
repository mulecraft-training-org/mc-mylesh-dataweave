%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "createTime" : time({ hour: 12,minutes: 50,seconds: 10,timeZone: |+05:30|})
}
