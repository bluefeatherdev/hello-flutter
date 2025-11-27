// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';
import 'package:flutter_application_17/database/firestore_database.dart';

class ParcelasPage extends StatefulWidget {
  const ParcelasPage({super.key});

  @override
  State<ParcelasPage> createState() => _ParcelasPageState();
}

class _ParcelasPageState extends State<ParcelasPage> {
  final FirestoreDatabase _database = FirestoreDatabase();

  // Controllers para el formulario
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sizeController = TextEditingController();
  final TextEditingController _cropTypeController = TextEditingController();
  String _selectedStatus = 'activa';

  @override
  void dispose() {
    _nameController.dispose();
    _sizeController.dispose();
    _cropTypeController.dispose();
    super.dispose();
  }

  // Mostrar diálogo para crear parcela
  void _showCreateParcelaDialog() {
    _nameController.clear();
    _sizeController.clear();
    _cropTypeController.clear();
    _selectedStatus = 'activa';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Crear Nueva Parcela'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ej: Parcela A',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _sizeController,
                decoration: const InputDecoration(
                  labelText: 'Tamaño',
                  hintText: 'Ej: 10m x 5m',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _cropTypeController,
                decoration: const InputDecoration(
                  labelText: 'Tipo de Cultivo',
                  hintText: 'Ej: Tomates, Lechugas',
                ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: _selectedStatus,
                decoration: const InputDecoration(labelText: 'Estado'),
                items: const [
                  DropdownMenuItem(value: 'activa', child: Text('Activa')),
                  DropdownMenuItem(
                      value: 'en preparación', child: Text('En Preparación')),
                  DropdownMenuItem(value: 'cosecha', child: Text('En Cosecha')),
                ],
                onChanged: (value) {
                  setState(() => _selectedStatus = value!);
                },
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (_nameController.text.isEmpty ||
                  _sizeController.text.isEmpty ||
                  _cropTypeController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Por favor completa todos los campos')),
                );
                return;
              }

              try {
                await _database.createParcela(
                  name: _nameController.text.trim(),
                  size: _sizeController.text.trim(),
                  cropType: _cropTypeController.text.trim(),
                  status: _selectedStatus,
                );
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Parcela creada exitosamente')),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            },
            child: const Text('Crear'),
          ),
        ],
      ),
    );
  }

  // Mostrar diálogo de confirmación para eliminar
  void _showDeleteConfirmation(String parcelaId, String name) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmar Eliminación'),
        content: Text('¿Estás seguro de eliminar la parcela "$name"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                await _database.deleteParcela(parcelaId);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Parcela eliminada')),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9F6),
      appBar: AppBar(
        title: const Text('Gestión de Parcelas'),
        backgroundColor: const Color(0xFF4CAF50),
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreateParcelaDialog,
        backgroundColor: const Color(0xFF4CAF50),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: _database.getAllParcelas(),
        builder: (context, snapshot) {
          // Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Error
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // No data
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.grid_on, size: 80, color: Colors.grey),
                  SizedBox(height: 20),
                  Text(
                    'No hay parcelas registradas',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Presiona el botón + para crear una',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          // Display parcelas
          List<Map<String, dynamic>> parcelas = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(15),
            itemCount: parcelas.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> parcela = parcelas[index];
              String parcelaId = parcela['id'];
              String name = parcela['name'] ?? 'Sin nombre';
              String size = parcela['size'] ?? 'Sin tamaño';
              String cropType = parcela['cropType'] ?? 'Sin cultivo';
              String status = parcela['status'] ?? 'activa';

              // Color según estado
              Color statusColor;
              switch (status) {
                case 'activa':
                  statusColor = Colors.green;
                  break;
                case 'en preparación':
                  statusColor = Colors.orange;
                  break;
                case 'cosecha':
                  statusColor = Colors.blue;
                  break;
                default:
                  statusColor = Colors.grey;
              }

              return Card(
                margin: const EdgeInsets.only(bottom: 15),
                color: const Color(0xFFE6F4EA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2E7D32),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: statusColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              status,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.straighten,
                              size: 18, color: Colors.grey),
                          const SizedBox(width: 5),
                          Text('Tamaño: $size'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(Icons.grass, size: 18, color: Colors.grey),
                          const SizedBox(width: 5),
                          Text('Cultivo: $cropType'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Función de editar por implementar'),
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit,
                                color: Color(0xFF4CAF50)),
                            tooltip: 'Editar',
                          ),
                          IconButton(
                            onPressed: () =>
                                _showDeleteConfirmation(parcelaId, name),
                            icon: const Icon(Icons.delete, color: Colors.red),
                            tooltip: 'Eliminar',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}