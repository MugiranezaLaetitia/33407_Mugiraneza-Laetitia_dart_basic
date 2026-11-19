Dart OOP Assignment: Kigali Bus Card

Name: Mugiraneza Laetitia
Student ID: 33407

My numbers
D = 7
L = 7
Starting balance = 1070 RWF
Bus fare = 207 RWF
Student discount = 7%
Output of main.dart

Expected output (paste your real terminal output over this after running):

Error: name too short
Owner: Mugiraneza | Balance: 1070 RWF
Owner: Mugiraneza Laetitia | Balance: 1070 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 207 RWF
Paid 207 RWF
Owner: Mugiraneza Laetitia | Balance: 2656 RWF
Student discount: 14 RWF
Paid 193 RWF
Owner: Mugiraneza Laetitia | Balance: 877 RWF
Student card: 7% off
Part 1: Why no setter for balance?

There is no direct setter for balance because it protects the card from unauthorized changes. The balance should only change through controlled methods such as topUp() and pay(). These methods apply the rules before changing the balance.

Part 2: What does ~/ do?

The ~/ operator performs integer division. It divides two numbers and returns an integer result by removing the decimal part.

For example:

207 * 7 / 100 gives 14.49
207 * 7 ~/ 100 gives 14

This is useful when calculating a discount that must be a whole number of RWF.

Part 4: Bug table
Bug	Problem	Why it is wrong	Fix
1	Fields have no initial values	Non-nullable fields need values before use	Initialize _brand and _battery
2	SmartPhone constructor does not call the parent constructor	The Phone constructor requires brand and battery	Use super(brand, battery)
3	restart() uses @override but the parent has no restart method	There is no parent method to override	Add restart() to Phone
4	Battery has no setter	The program cannot assign a new battery value	Add a setter with a 0–100 rule
5	p.battery()	A getter is accessed like a property, not a method	Use p.battery

Not a bug: Phone p = new Phone('Tecno', 50); is valid Dart. The new keyword is optional when creating an object, but it is not an error.

Part 5

I haven’t seen your Part 5 code (the BigBag class), so I left this section as you wrote it. The prediction below is the one from your sample, so check it against your own code before you submit.

My prediction: The first printed value will be 1 and the second will be 5. The first stays 1 because the setter refuses the negative value -5. The second becomes 5 because each BigBag add() call adds two items, so two calls add four items and the setter then adds one more.

Real output: Paste your terminal output here after running.

Was I right? Compare the real output with the prediction above and complete this after running.

If you paste the Part 5 code, I can trace its output and check whether the prediction holds with your numbers.