// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';
import 'package:flutter_application_17/components/my_back_button.dart';

class AssignManagersPage extends StatefulWidget {
  const AssignManagersPage({super.key});

  @override
  State<AssignManagersPage> createState() => _AssignManagersPageState();
}

class _AssignManagersPageState extends State<AssignManagersPage> {
  // form ket
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Text field controllers
  final TextEditingController managerNameController = TextEditingController();
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
                      'Asignar responsables',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // 1. Nombre responsable
                    TextFormField(
                      controller: managerNameController,
                      decoration: const InputDecoration(
                        hintText: 'Enter manager name',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 10),

                    // 2. Select parcela
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

                    const SizedBox(height: 10),

                    // 3. Estado del huerto
                    Text('Parcela status: get parcela STATUS with Firebase...'),

                    const SizedBox(height: 10),

                    // 4. Tipo de cultivo
                    Text('Parcela type: get parcela TYPE with Firebase...'),

                    const SizedBox(height: 10),

                    // Submit button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process form data with Firebase...
                          }
                        },
                        child: const Text('Asignar'),
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
