%dw 2.0
output application/json

/* Requirements:
 * Calculate total value of products by multiplying quantity and price
 * Find the product with maximum quantity using MaxBy
 * Find the product with minimum quantity using MinBy
 * Check if the year is a leap year using IsLeapYear
 */
---
{
    "totalValue" : sum(payload.manufacturingData.products map((item)-> item.quantity * item.price)),
    "maxQuantityProduct" : payload.manufacturingData.products maxBy ((item) -> item.quantity),
    "minQuantityProduct" : payload.manufacturingData.products minBy ((item) -> item.quantity),
    "isLeapyear" : isLeapYear(payload.manufacturingData.date)
}
// Expected Output
// {
//   "totalValue": 4200,
//   "maxQuantityProduct": {
//     "id": "002",
//     "name": "Widget B",
//     "quantity": 200,
//     "price": 15
//   },
//   "minQuantityProduct": {
//     "id": "001",
//     "name": "Widget A",
//     "quantity": 150,
//     "price": 10.5
//   },
//   "isLeapYear": false
// }
