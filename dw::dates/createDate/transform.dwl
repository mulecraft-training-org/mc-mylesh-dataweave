%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "createDate" : date({year: 2023,month: 10,day: 20})
}
