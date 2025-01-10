%dw 2.0
output application/json

/* Requirements:
 * Filter out products with stock less than 1
 * Map product fields to new structure
 * Calculate total stock from available products
 *
 * Expected Output:
 * {
 *   "availableProducts": [
 *     {
 *       "productId": "001",
 *       "productName": "Laptop",
 *       "productPrice": 1200,
 *       "productCategory": "Electronics"
 *     },
 *     {
 *       "productId": "002",
 *       "productName": "Smartphone",
 *       "productPrice": 800,
 *       "productCategory": "Electronics"
 *     },
 *     {
 *       "productId": "003",
 *       "productName": "Desk Chair",
 *       "productPrice": 150,
 *       "productCategory": "Furniture"
 *     }
 *   ],
 *   "totalStock": 100
 * }
 */
var product = (payload.products filter ((value, index) -> value.stock >= 1) )
---
{
    "availableProducts" :  
    product map ({
                "productId" : $.id,
                "productName" : $.name,
                "productPrice" : $.price,
                "productCategory" : $.category
}),
"totalStock" : sum(product.stock)
}
