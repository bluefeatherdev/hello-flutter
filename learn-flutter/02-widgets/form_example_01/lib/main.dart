// Learn Flutter - Widgets - Form Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const FormExampleApp());

class FormExampleApp extends StatelessWidget {
  const FormExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Form Sample 01')),
        body: const FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(hintText: 'Enter your email'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text.';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validates every [FormField] that is a descendant of this [Form],
                // and returns true if there are no errors.
                if (_formKey.currentState!.validate()) {
                  // Process data
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
