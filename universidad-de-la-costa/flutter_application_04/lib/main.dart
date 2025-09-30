// Universidad de la Costa - Computación Móvil - Flutter Application 04:
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PaymentAppExample());
  }
}

class PaymentAppExample extends StatefulWidget {
  const PaymentAppExample({super.key});

  @override
  State<PaymentAppExample> createState() => _PaymentAppExampleState();
}

class _PaymentAppExampleState extends State<PaymentAppExample> {
  double paymentTotal = 0;
  TextEditingController unitsController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  void getPayment() {
    setState(() {
      final units = double.tryParse(unitsController.text) ?? 0;
      final price = double.tryParse(unitsController.text) ?? 0;
      paymentTotal = units * price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment App Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 220,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: unitsController,
                decoration: const InputDecoration(
                  labelText: 'Type units',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 23),
            SizedBox(
              width: 220,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: priceController,
                decoration: const InputDecoration(
                  labelText: 'Type price',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 23),
            ElevatedButton(
              onPressed: () => getPayment(),
              child: const Text(
                'Get Payment',
                style: TextStyle(color: Colors.teal),
              ),
            ),
            const SizedBox(height: 23),
            Text(
              'Payment Total: $paymentTotal',
              style: const TextStyle(fontSize: 23, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
