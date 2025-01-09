%dw 2.0
output application/json

/* Requirements:
 * Calculate total quantity of products
 * Find the product with maximum quantity
 * Transform the data structure for output
 *
 * Expected Output:
 * {
 *   "totalQuantity": 100,
 *   "maxProductId": "P001"
 * }
 */
---
payload mapObject ({
    "totalQuantity" : sum(payload.manufacturing.products.quantity),
    "maxProductId" : $.products.id[$.products.quantity indexOf  max($.products.quantity)]
})
