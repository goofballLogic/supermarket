# Supermarket Kata


## Background

Driven by the current cost of living crisis, a new supermarket (Sunnyshoppers) has opened with the intention of bringing great deals and prices to their customers.

Before they can open their first shop they need you to write their till system for them.


## Task 1

The requirements are simple.  Customers need to be able to scan their items,  and then once they have paid a receipt needs to be generated.

For example

``` javascript
    var basket = new Basket();
    basket.ScanItem("Milk")
    basket.ScanItem("Milk")
    basket.ScanItem("Bread")
    basket.GenerateReceipt();
```

The generated receipt could be

```
    1) Milk. 2 @ £1.50 = £3.00 
    2) Bread. 1 @ £3.50 = £3.50
    Total:  £6.50 
```


## Task 2

Although all the items are very reasonably priced, a survey of customers have shown that they would like some special offers.

The till needs to be able to support the following discounts being selectively applied to products.

1. Buy 2 of the product and get a 3rd free.

2. If you buy product X,  then get product Y for free.

3. Meal deals.  (A snack + a meal + a drink for £4.95 )


## Task 3

At the end of each day a lot of fresh, unsold goods are being thrown away.  The supermarket would like to reduce these items by 50% for the shops final hour (9pm -> 10pm) 


## Task 4

The supermarket is doing really well, but the management would like to understand the demographics of their customers better.  To track their customers they have decided to implement a loyalty card.

Some products now have two prices.  If a customer scans their loyalty card then the lower price is used.


## Task 5

The supermarket is now making a good profit,  and customers have some great prices.  The employees aren't happy with their salaries however and have threatened to go on strike.  After much discussion the introduction of an employee discount has been agreed.  If an employee scans their ID badge,  then they get a further 6.5% discount.

## Task 6

Walking around the carpark one evening,  the manager discovered that a high number of receipts are just discarded and litter up the area.  Enhance the till system so that the receipts can also be generated as html (suitable for emailing)