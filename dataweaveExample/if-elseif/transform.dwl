%dw 2.0
output application/json
---
if(payload.invoiceStatus==true)  ({
    "event": "order failure",
    "user_id": payload.id,
    "orders": " ",
    "email": payload.email,
    "invoice_url": "Payment declined"
})

else payload.id
