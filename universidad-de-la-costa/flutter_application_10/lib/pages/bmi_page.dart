// Universidad de la Costa - Computación Móvil - Flutter Application 10:
import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/dev_signature.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double bmi = 0;
  String bmiMessage = '';
  Color bmiMessageColor = Colors.teal;
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  void getBmi() {
    setState(() {
      final weight = double.tryParse(weightController.text) ?? 0;
      final height = double.tryParse(heightController.text) ?? 0;
      bmi = height != 0 ? weight / (height * height) : 0;

      if (bmi == 0) {
        bmiMessage = '';
      } else if (bmi < 18.5) {
        bmiMessage = 'Underweight';
        bmiMessageColor = Colors.amber.shade800;
      } else if (bmi < 25) {
        bmiMessage = 'Normal weight';
        bmiMessageColor = Colors.teal;
      } else if (bmi < 30) {
        bmiMessage = 'Overweight';
        bmiMessageColor = Colors.amber.shade800;
      } else if (bmi < 35) {
        bmiMessage = 'Obese (Class I)';
        bmiMessageColor = Colors.red.shade400;
      } else if (bmi < 40) {
        bmiMessage = 'Obese (Class II)';
        bmiMessageColor = Colors.red.shade600;
      } else {
        bmiMessage = 'Obese (Class III)';
        bmiMessageColor = Colors.red.shade900;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Weight:'),
                  SizedBox(
                    width: 256,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: weightController,
                      decoration: const InputDecoration(
                        helperText: 'Type your weight (in kilograms)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Height:'),
                  SizedBox(
                    width: 256,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: heightController,
                      decoration: const InputDecoration(
                        helperText: 'Type your height (in meters)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            ElevatedButton(
              onPressed: () => getBmi(),
              child: const Text(
                'Calculate BMI',
                style: TextStyle(color: Colors.teal),
              ),
            ),
            const SizedBox(height: 23),
            Text(
              bmi != 0.0 ? 'Your BMI is: ${bmi.toStringAsFixed(2)}' : '',
              style: TextStyle(color: Colors.teal),
            ),
            const SizedBox(height: 23),
            Text(
              bmiMessage,
              style: TextStyle(
                color: bmiMessageColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }
}
