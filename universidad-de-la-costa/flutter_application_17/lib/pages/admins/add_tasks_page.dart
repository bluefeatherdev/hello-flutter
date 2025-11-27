// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';
import 'package:flutter_application_17/components/my_back_button.dart';

class AddTasksPage extends StatefulWidget {
  const AddTasksPage({super.key});

  @override
  State<AddTasksPage> createState() => _AddTasksPageState();
}

class _AddTasksPageState extends State<AddTasksPage> {
  // form ket
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Text field controllers
  final TextEditingController taskNameController = TextEditingController();
  final TextEditingController taskTypeController = TextEditingController();
  final TextEditingController taskDateController = TextEditingController();
  final TextEditingController parcelaNameController = TextEditingController();

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // My back button
              Row(children: <Widget>[MyBackButton()]),

              Expanded(child: SizedBox()),

              // Form parcelas
              Form(
                child: Column(
                  children: <Widget>[
                    // 0. Title
                    Text(
                      'Planificar tareas semanales o mensuales',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // 1. Nombre
                    TextFormField(
                      controller: taskNameController,
                      decoration: const InputDecoration(
                        hintText: 'Enter task name',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 10),

                    // 2. Type
                    TextFormField(
                      controller: taskTypeController,
                      decoration: const InputDecoration(
                        hintText: 'Select task type',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 10),

                    // 3. Fecha responsable
                    TextFormField(
                      controller: taskDateController,
                      decoration: const InputDecoration(
                        hintText: 'Enter task date',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 10),

                    // 4. Select parcela (get parcela list with Firebase...)
                    TextFormField(
                      controller: parcelaNameController,
                      decoration: const InputDecoration(
                        hintText: 'Select parcela',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    // Submit button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process form data with Firebase...
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
