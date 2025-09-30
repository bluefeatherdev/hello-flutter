// Universidad de la Costa - Computación Móvil - Flutter Application 10:
import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/dev_signature.dart';
import 'package:intl/intl.dart';

class WagePage extends StatefulWidget {
  const WagePage({super.key});

  @override
  State<WagePage> createState() => _WagePageState();
}

class _WagePageState extends State<WagePage> {
  double wage = 0;
  String employeeName = '';
  Color wageMessageColor = Colors.teal;
  final employeeNameController = TextEditingController();
  final hoursWorkedController = TextEditingController();
  final hourlyRateController = TextEditingController();
  final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);

  void calculateWage() {
    setState(() {
      employeeName = employeeNameController.text.trim();
      final hoursWorked = double.tryParse(hoursWorkedController.text) ?? 0;
      final hourlyRate = double.tryParse(hourlyRateController.text) ?? 0;
      wage = hoursWorked != 0 ? hoursWorked * hourlyRate : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wage Calculator Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Wage Calculator',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Employee Name:'),
                  SizedBox(
                    width: 220,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: employeeNameController,
                      decoration: const InputDecoration(
                        helperText: 'Type employee name',
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
                  Text('Hours Worked:'),
                  SizedBox(
                    width: 220,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: hoursWorkedController,
                      decoration: const InputDecoration(
                        helperText: 'Type their hours worked',
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
                  Text('Hourly Rate:'),
                  SizedBox(
                    width: 220,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: hourlyRateController,
                      decoration: const InputDecoration(
                        helperText: 'Type their hourly rate (\$)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            ElevatedButton(
              onPressed: () => calculateWage(),
              child: const Text(
                'Calculate Wage',
                style: TextStyle(color: Colors.brown),
              ),
            ),
            const SizedBox(height: 23),
            Text(
              wage != 0.0 && employeeName.isNotEmpty
                  ? '$employeeName\'s total wage is: ${formatter.format(wage)} USD'
                  : '',
              style: TextStyle(
                color: Colors.brown,
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
