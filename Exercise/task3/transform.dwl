%dw 2.0
output application/json
---
{
   "products" : (payload filter( (item) -> 
    (item.category == "Electronics") and
    (item.productName != null and item.productName != "") ))
    map ({
   "productName" : $.productName replace  "Old" with "Classic",
   "price" : $.price,
   "stock" : $.stock,
   "category" : $.category,
   "totalInvestory" : ($.price) * ($.stock)
}),
    "totalStock" : (payload filter ((item) -> (item.category == "Electronics"))).stock reduce ((item, acc = 0) -> acc + item )
}

//1.calculate:
//      Total stock: Sum of the stock field for all products.
//      Total inventory value: Sum of (price * stock) for all products.
//2.Identify and remove products with null or blank productName.
//3.include only products in the "Electronics" category.
//4.Replace "Old" in productName with "Classic" 
