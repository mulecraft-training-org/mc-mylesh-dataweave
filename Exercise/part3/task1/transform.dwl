%dw 2.0
output application/json

/* Requirements:
 * Include only the items that the reservations to include only those with a confirmed status.
 * Map the filtered reservations to extract customer names and their corresponding prices.
 * Determine the value of the total price for each confirmed reservation.
 * Compute the average price of the confirmed reservations.
 */
var confirmed = payload.reservations filter ((item, index) -> item.status == 'confirmed') 
---
{
    "confirmedReservations" :confirmed  map ({
        "customer" : $.customer,
        "totalPrice" : $.price
    }),
    "averagePrice" : avg(confirmed.price)
}

// (sum(payload.reservations filter ((item, index) -> item.status == 'confirmed') map ((item, index) -> item.price ))) 

 /* Expected Output:
 * {
 *   "confirmedReservations": [
 *     {
 *       "customer": "Alice",
 *       "totalPrice": 1200
 *     },
 *     {
 *       "customer": "Charlie",
 *       "totalPrice": 1500
 *     },
 *     {
 *       "customer": "Eve",
 *       "totalPrice": 900
 *     }
 *   ],
 *   "averagePrice": 1233.33
 * }
 */ 
