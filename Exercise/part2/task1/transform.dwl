%dw 2.0
output application/json

/* Requirements:
 * Determine the route with minimum distance
 * Determine the route with maximum distance
 * Transform the data structure for output
 *
 * Expected Output:
 * {
 *   "shortestRouteId": "R3",
 *   "longestRouteId": "R2"
 * }
 */
---
payload.transportation mapObject ({
    "shortestRouteId" : $.routeId[ $.distance indexOf   min($.distance)],
    "longestRouteId" : $.routeId[$.distance indexOf max($.distance)]
})
