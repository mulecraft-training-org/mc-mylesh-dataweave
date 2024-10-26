%dw 2.0
import * from dw::core::Arrays
output application/json
---

{
    "detail": payload map ((value, index) -> value )
                      then  {
                          firstName: $[0],
                          lastName: $[1],
                          fullName: $ joinBy " "
                      }
}
