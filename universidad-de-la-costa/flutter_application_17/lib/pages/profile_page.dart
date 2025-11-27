// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';
import 'package:flutter_application_17/components/my_back_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // User data
  final username = 'John Doe';
  final userRole = 'Administrador';

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

              // Icon
              Icon(Icons.person, size: 80),

              const SizedBox(height: 25),

              // Greeting
              Text('Welcome!', style: TextStyle(fontWeight: FontWeight.w500)),

              // Username
              Text(username),

              // User role
              Text(userRole),

              const SizedBox(height: 25),

              // Cards de administrador
              if (userRole == 'Administrador')
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      // 01. Organizar parcelas o zonas de cultivos
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Organizar parcelas o zonas de cultivos',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.'
                                ' Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.',
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/parcelas-page',
                                  );
                                },
                                child: const Text('Click here'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 02. Asignar responsables
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Asignar responsables',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.'
                                ' Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.',
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/assign-managers-page',
                                  );
                                },
                                child: const Text('Click here'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 03. Planificar tareas semanales o mensuales
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Planificar tareas semanales o mensuales',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.'
                                ' Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.',
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/add-tasks-page',
                                  );
                                },
                                child: const Text('Click here'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              // Cards de usuario normal
              if (userRole == 'User')
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      // 01. Inscribirse como voluntarios
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Inscribirse como voluntarios',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.'
                                ' Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.',
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Click here'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 02. Postularse a tareas específicas
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Postularse a tareas específicas',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.'
                                ' Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.',
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Click here'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 03. Registrar su colaboración con el huerto
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Registrar su colaboración con el huerto',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.'
                                ' Esse ullamco dolore consectetur et amet fugiat consectetur anim non aliquip.',
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Click here'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
