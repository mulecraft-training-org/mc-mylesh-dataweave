%dw 2.0
import * from dw::core::Arrays
output application/json
---
leftJoin(user,product ,(user) -> user.id,(product)-> product.ownerId)
