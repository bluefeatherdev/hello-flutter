// Universidad de la Costa - Computación Móvil - Flutter Application 15:
import 'package:flutter/material.dart';
import 'package:flutter_application_15/components/my_product.dart';
import 'package:flutter_application_15/services/firestore_service.dart';
import 'package:flutter_application_15/test/future_duration_testing.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  MyProduct? myProduct;

  /// Searches for a product in Firestore by name and state.
  /// If the product is found, it shows a success dialog and saves preferences.
  /// If not found, it shows an error dialog.
  Future<void> _searchProductWithPreferences(
    BuildContext context,
    String name,
    bool state,
  ) async {
    try {
      MyProduct? productToSearch = await firestoreService.searchProduct(
        name,
        state,
      );

      if (productToSearch != null) {
        myProduct = productToSearch;
        debugPrint('Product name: ${myProduct!.name}');
        _showInfoDialog('💡 Product found!');
        await _savePreferences(myProduct!);
      } else {
        _showInfoDialog('❓ Product not found.');
      }
    } catch (e) {
      debugPrint('Search error: $e');
      _showInfoDialog('An error occurred while searching');
    }
  }

  /// Saves product information into SharedPreferences for persistence.
  /// This allows the app to remember the last searched product.
  Future<void> _savePreferences(MyProduct product) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('productId', product.id);
    await preferences.setString('productName', product.name);
  }

  /// Displays an AlertDialog with a custom message.
  /// This is a helper method and can be moved to a separate utility class
  /// if you plan to reuse it across multiple widgets.
  void _showInfoDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Product Feedback'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Exit'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Flutter Application 15')),
      body: StreamBuilder<List<MyProduct>>(
        stream: firestoreService.readProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData) {
            return Center(
              child: const Text('No data found in FirestoreService...'),
            );
          }

          if (snapshot.hasError) {
            return Center(child: const Text('Something went wrong...'));
          }

          List<MyProduct> productsList = snapshot.data!;
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: productsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    MyProduct product = productsList[index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle: Text(product.price),
                      trailing: Checkbox(
                        value: product.state,
                        onChanged: (value) {
                          if (value != null) {
                            firestoreService.updateProduct(
                              product.id,
                              MyProduct(
                                id: product.id,
                                name: product.name,
                                price: product.price,
                                state: product.state,
                              ),
                            );
                          }
                        },
                      ),
                      onLongPress: () {
                        debugPrint('Product Id: ${myProduct!.id}');
                        firestoreService.deleteProduct(product.id);
                        _showInfoDialog('🗑️ Product deleted successfully.');
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 256,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => testFutureDuration(),
                      child: const Text('Test Future and Duration'),
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        _searchProductWithPreferences(context, 'Apple', true);
                      },
                      child: const Text("Search 'Apple' with Preferences"),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // show modal bottom sheet
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SizedBox(
                  height: 456,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            'Create a Product',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // name text field
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 25.0,
                            ),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: 'Type product name...',
                              ),
                            ),
                          ),

                          // price text field
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 25.0,
                            ),
                            child: TextField(
                              controller: priceController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                hintText: 'Type product price...',
                              ),
                            ),
                          ),

                          // close button
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Close'),
                                ),
                                const SizedBox(width: 25),
                                // submit button
                                ElevatedButton(
                                  onPressed: () async {
                                    // if text field are not empty
                                    if (nameController.text.isNotEmpty &&
                                        priceController.text.isNotEmpty) {
                                      ProductResult result =
                                          await firestoreService.createProduct(
                                            nameController.text.trim(),
                                            priceController.text.trim(),
                                          );

                                      // if (!mounted) return;

                                      switch (result) {
                                        case ProductResult.created:
                                          _showInfoDialog(
                                            '✅ Product created successfully!',
                                          );
                                          nameController.clear();
                                          priceController.clear();
                                          break;
                                        case ProductResult.duplicate:
                                          _showInfoDialog(
                                            '⚠️ Product already exists.',
                                          );
                                          break;
                                        case ProductResult.error:
                                          _showInfoDialog(
                                            '❌ An error occurred while creating the product.',
                                          );
                                          break;
                                      }
                                    }
                                  },
                                  child: const Text('Submit'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
