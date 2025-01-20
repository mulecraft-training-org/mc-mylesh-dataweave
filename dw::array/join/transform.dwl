%dw 2.0
import * from dw::core::Arrays
output application/json
---
join(user,product ,(user) -> user.id,(product)-> product.ownerId)
