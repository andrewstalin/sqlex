## **Task 1**
### Description
*Find the model number, speed and hard drive capacity for all the PCs with prices below $500.*
*Result set: model, speed, hd.*

### Answer
| model	| speed	| hd   |
| ----- | ----- | ---- |
| 1232	| 500	| 10.0 |
| 1232	| 450	| 8.0  |
| 1232	| 450	| 10.0 |
| 1260	| 500	| 10.0 |


## **Task 2**
### Description
List all printer makers. Result set: maker.

### Answer
| maker |
| ----- |
| A     |
| D     |
| E     |


## **Task 3**
### Description
*Find the model number, RAM and screen size of the laptops with prices over $1000.*

### Answer
| model | ram |	screen |
| ----- | --- | ------ |
| 1750	| 128 |	14     |
| 1298	| 64  |	15     |
| 1752	| 128 |	14     |


## **Task 4**
### Description
*Find all records from the Printer table containing data about color printers.*

### Answer
| code | model | color | type |	price    |
| ---- | ----- | ----- | ---- | -------- |
| 3	   | 1434  | y	   | Jet  |	290.0000 |
| 2	   | 1433  | y	   | Jet  |	270.0000 |


## **Task 5**
### Description
*Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.*

### Answer
| model | speed | hd   |
| ----- | ----- | ---- |
| 1232  | 500	| 10.0 |
| 1232	| 450	| 8.0  |
| 1232	| 450	| 10.0 |
| 1260	| 500	| 10.0 |


## **Task 6**
### Description
*For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.*

### Answer
| maker | speed |
| ----- | ----- |
| A	    | 450   |
| A	    | 600   |
| A	    | 750   |
| B	    | 750   |


## **Task 7**
### Description
*Get the models and prices for all commercially available products (of any type) produced by maker B.*

### Answer
| model | price     |
| ----- | --------- |
| 1121  | 850.0000  |
| 1750	| 1200.0000 |


## **Task 8**
### Description
*Find the makers producing PCs but not laptops.*

### Answer
| maker |
| ----- |
| E     |


## **Task 9**
### Description
*Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.*

### Answer
| maker |
| ----- |
| A     |
| B     |
| E     |


## **Task 10**
### Description
*Find the printer models having the highest price. Result set: model, price.*

### Answer
| model | price    |
| ----- | -------- |
| 1288	| 400.0000 |
| 1276	| 400.0000 |


## **Task 11**
### Description
*Find out the average speed of PCs.*

### Answer
|     |
| --- |
| 608 |


## **Task 12**
### Description
*Find out the average speed of the laptops priced over $1000.*

### Answer
|     |
| --- |
| 700 |


## **Task 13**
### Description
*Find out the average speed of the PCs produced by maker A.*

### Answer
|     |
| --- |
| 600 |

## **Task 14**
### Description
*For the ships in the Ships table that have at least 10 guns, get the class, name, and country.*

### Answer
| class	         | name	          | country |
| -------------- | -------------- | ------- |
| Tennessee 	 | California	  | USA     |
| North Carolina | North Carolina |	USA     |
| North Carolina | South Dakota	  | USA     |
| Tennessee      | Tennessee	  | USA     |
| North Carolina | Washington	  | USA     |


## **Task 15**
### Description
*Get hard drive capacities that are identical for two or more PCs.*
*Result set: hd.*

### Answer
| hd   |
| ---- |
| 5.0  |
| 8.0  |
| 10.0 |
| 14.0 |
| 20.0 |


## **Task 16**
### Description
*Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).*
*Result set: model with the bigger number, model with the smaller number, speed, and RAM.*

### Answer
| model	| model	| speed	| ram |
| ----- | ----- | ----- | --- |
| 1233	| 1121	| 750	| 128 |
| 1233	| 1232	| 500	| 64  |
| 1260	| 1232	| 500	| 32  |


## **Task 17**
### Description
*Get the laptop models that have a speed smaller than the speed of any PC.*
*Result set: type, model, speed.*

### Answer
|	     | model | speed |
| ------ | ----- | ----- |
| Laptop | 1298	 | 350   | 


## **Task 18**
### Description
*Find the makers of the cheapest color printers.*
*Result set: maker, price.*

### Answer
| maker | price    |
| ----- | -------- |
| D	    | 270.0000 |


## **Task 19**
### Description
*For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.*
*Result set: maker, average screen size.*

### Answer
| maker | average_screen |
| ----- | -------------- |
| A	    | 13             |
| B	    | 14             |
| C	    | 12             |


## **Task 20**
### Description
*Find the makers producing at least three distinct models of PCs.*
*Result set: maker, number of PC models.*

### Answer
| maker |   |
| ----- | - |
| E	    | 3 |


## **Task 21**
### Description
*Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.*

### Answer
| maker |	       |
| ----- | -------- |
| A	    | 980.0000 |
| B	    | 850.0000 |
| E	    | 350.0000 |


## **Task 22**
### Description
*For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.*
*Result set: speed, average price.*

### Answer
| speed	|          |
| ----- | -------- |
| 750	| 900.0000 |
| 800	| 970.0000 |
| 900	| 980.0000 |


## **Task 23**
### Description
*Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.*
*Result set: maker*

### Answer
| maker |
| ----- |
| A     |
| B     |


## **Task 24**
### Description
*List the models of any type having the highest price of all products present in the database.*

### Answer
| model |
| ----- |
| 1750  |


## **Task 25**
### Description
*Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.*
*Result set: maker.*

### Answer
| maker |
| ----- |
| A     |
| E     |


## **Task 26**
### Description
*Find out the average price of PCs and laptops produced by maker A.*
*Result set: one overall average price for all items.*

### Answer
|          |
| -------- |
| 754.1666 |


## **Task 27**
### Description
*Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.*
*Result set: maker, average HDD capacity.*

### Answer
| maker |       |
| ----- | ----- |	
| A	    | 14.75 |
| E	    | 10.0  |


## **Task 28**
### Description
*Using Product table, find out the number of makers who produce only one model.*

### Answer
|          |
| -------- |
| 1        |


## **Task 29**
### Description
*Under the assumption that receipts of money (inc) and payouts (out) are registered not more than once a day for each collection point [i.e. the primary key consists of (point, date)],*
*write a query displaying cash flow data (point, date, income, expense).*
*Use Income_o and Outcome_o tables.*

### Answer
| point | 	date	              | inc        | 	out     |
| ----- | ----------------------- | ---------- | ---------- |
| 1	    | 2001-03-14 00:00:00.000 |	NULL	   | 15348.0000 |
| 1	    | 2001-03-22 00:00:00.000 |	15000.0000 | NULL       |
| 1		| 2001-03-23 00:00:00.000 |	15000.0000 | NULL       |
| 1	    | 2001-03-24 00:00:00.000 |	3400.0000  | 3663.0000  |
| 1     | 2001-03-26 00:00:00.000 |	NULL	   | 1221.0000  |
| 1     | 2001-03-28 00:00:00.000 |	NULL	   | 2075.0000  |
| 1     | 2001-03-29 00:00:00.000 |	NULL	   | 2004.0000  |
| 1     | 2001-04-11 00:00:00.000 |	NULL	   | 3195.0400  |
| 1     | 2001-04-13 00:00:00.000 |	5000.0000  | 4490.0000  |
| 1     | 2001-04-27 00:00:00.000 |	NULL	   | 3110.0000  |
| 1     | 2001-05-11 00:00:00.000 |	4500.0000  | 2530.0000  |
| 2     | 2001-03-22 00:00:00.000 |	10000.0000 | 1440.0000  |
| 2     | 2001-03-24 00:00:00.000 |	1500.0000  | NULL       | 
| 2     | 2001-03-29 00:00:00.000 |	NULL       | 7848.0000  |
| 2     | 2001-04-02 00:00:00.000 |	NULL       | 2040.0000  |
| 3     | 2001-09-13 00:00:00.000 |	11500.0000 | 1500.0000  |
| 3     | 2001-09-14 00:00:00.000 |	NULL       | 2300.0000  |
| 3     | 2001-10-02 00:00:00.000 |	18000.0000 | NULL       |
| 3     | 2002-09-16 00:00:00.000 |	NULL       | 2150.0000  |


## **Task 30**
### Description
*Under the assumption that receipts of money (inc) and payouts (out) can be registered any number of times a day for each collection point [i.e. the code column is the primary key],*
*display a table with one corresponding row for each operating date of each collection point.*
*Result set: point, date, total payout per day (out), total money intake per day (inc).*
*Missing values are considered to be NULL.*

### Answer

| point	| date	                  | outc	   | inc        |
| ----- | ----------------------- | ---------- | ---------- |
| 1     | 2001-03-14 00:00:00.000 | 15348.0000 | NULL       |
| 1     | 2001-03-22 00:00:00.000 | NULL       | 30000.0000 |
| 1     | 2001-03-23 00:00:00.000 | NULL       | 15000.0000 |
| 1     | 2001-03-24 00:00:00.000 | 7163.0000  | 7000.0000  |
| 1     | 2001-03-26 00:00:00.000 | 1221.0000  | NULL       |
| 1     | 2001-03-28 00:00:00.000 | 2075.0000  | NULL       |
| 1     | 2001-03-29 00:00:00.000 | 4010.0000  | NULL       |
| 1     | 2001-04-11 00:00:00.000 | 3195.0400  | NULL       |
| 1     | 2001-04-13 00:00:00.000 | 4490.0000  | 10000.0000 |
| 1     | 2001-04-27 00:00:00.000 | 3110.0000  | NULL       |
| 1     | 2001-05-11 00:00:00.000 | 2530.0000  | 4500.0000  |
| 2     | 2001-03-22 00:00:00.000 | 2880.0000  | 10000.0000 |
| 2     | 2001-03-24 00:00:00.000 | NULL       | 3000.0000  |
| 2     | 2001-03-29 00:00:00.000 | 7848.0000  | NULL       |
| 2     | 2001-04-02 00:00:00.000 | 2040.0000  | NULL       |
| 3     | 2001-09-13 00:00:00.000 | 2700.0000  | 3100.0000  |
| 3     | 2001-09-14 00:00:00.000 | 1150.0000  | NULL       |


## **Task 31**
### Description
*For ship classes with a gun caliber of 16 in. or more, display the class and the country.*

### Answer
| class          | country |
| -------------- | ------- |
| Iowa	         | USA     |
| North Carolina | USA     |
| Yamato         | Japan   |


## **Task 32**
### Description
*One of the characteristics of a ship is one-half the cube of the calibre of its main guns (mw).*
*Determine the average ship mw with an accuracy of two decimal places for each country having ships in the database.*

### Answer
| country	 | weight  |
| ---------- | ------- |
| Germany	 | 1687.50 | 
| Gt.Britain | 1687.50 |
| Japan	     | 1886.67 |
| USA	     | 1897.78 |


## **Task **
### Description
**

### Answer



## Task 63
### Description
*Определить имена разных пассажиров, когда-либо летевших на одном и том же месте более одного раза.*

### Answer
| name          |
| ------------- |
| Bruce Willis  |        
| Mullah Omar   |      
| Nikole Kidman |   

## Task 64
### Description
*Используя таблицы Income и Outcome, для каждого пункта приема определить дни, когда был приход, но не было расхода и наоборот.*
*Вывод: пункт, дата, тип операции (inc/out), денежная сумма за день.*

### Answer
| point  |          date            | operation  |   money    |
|--------|--------------------------|------------|------------|
|     1  | 2001-03-14 00:00:00.000  | out        | 15348.0000 |
|     1  | 2001-03-22 00:00:00.000  | inc        | 30000.0000 |
|     1  | 2001-03-23 00:00:00.000  | inc        | 15000.0000 |
|     1  | 2001-03-26 00:00:00.000  | out        |  1221.0000 |
|     1  | 2001-03-28 00:00:00.000  | out        |  2075.0000 |
|     1  | 2001-03-29 00:00:00.000  | out        |  4010.0000 |
|     1  | 2001-04-11 00:00:00.000  | out        |  3195.0400 |
|     1  | 2001-04-27 00:00:00.000  | out        |  3110.0000 |
|     2  | 2001-03-24 00:00:00.000  | inc        |  3000.0000 |
|     2  | 2001-03-29 00:00:00.000  | out        |  7848.0000 |
|     2  | 2001-04-02 00:00:00.000  | out        |  2040.0000 |
|     3  | 2001-09-14 00:00:00.000  | out        |  1150.0000 |

## Task 66
### Description
*Для всех дней в интервале с 01/04/2003 по 07/04/2003 определить число рейсов из Rostov.*
*Вывод: дата, количество рейсов*

### Answer
| num  | maker  |  type   |
|------|--------|---------|
|   1  | A      | PC      |
|   2  |        | Laptop  |
|   3  |        | Printer |
|   4  | B      | PC      |
|   5  |        | Laptop  |
|   6  | C      | Laptop  |
|   7  | D      | Printer |
|   8  | E      | PC      |
|   9  |        | Printer |

## Task 67
### Description
*Find out the number of routes with the greatest number of flights (trips).*
*Notes:*
- *A - B and B - A are to be considered DIFFERENT routes.*
- *Use the Trip table only.*

### Answer
| route_count |
|-------------|
|           4 |

## Task 
