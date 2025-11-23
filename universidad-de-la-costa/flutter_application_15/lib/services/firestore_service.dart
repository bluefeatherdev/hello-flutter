// Universidad de la Costa - Computación Móvil - Flutter Application 15:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter_application_15/components/my_product.dart';

enum ProductResult { created, duplicate, error }

class FirestoreService {
  final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
  final CollectionReference _productsCollection = FirebaseFirestore.instance
      .collection('products');

  // 1. Create a product
  Future<ProductResult> createProduct(String name, String price) async {
    try {
      // Check if a product with the same name already exists
      QuerySnapshot existing = await _productsCollection
          .where('name', isEqualTo: name)
          .limit(1)
          .get();

      if (existing.docs.isNotEmpty) {
        debugPrint('Duplicate product: $name already exists.');
        return ProductResult.duplicate;
      }

      // Create product if not found
      await _productsCollection.add({
        'name': name,
        'value': price,
        'state': true,
      });

      debugPrint('Product created: $name');
      return ProductResult.created;
    } catch (e) {
      debugPrint('createProduct error: $e');
      return ProductResult.error;
    }
  }

  // 2. Read all products
  Stream<List<MyProduct>> readProducts() {
    return _productsCollection.snapshots().map((snap) {
      return snap.docs.map<MyProduct>((doc) {
        return MyProduct.fromMap(doc, doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }

  // 3. Update a product
  Future<void> updateProduct(String id, MyProduct product) async {
    try {
      await _productsCollection.doc(id).update(product.toMap());
    } catch (e) {
      debugPrint('updateProduct error: $e');
    }
  }

  // 4. Delete a product
  Future<void> deleteProduct(String id) async {
    try {
      await _productsCollection.doc(id).delete();
    } catch (e) {
      debugPrint('deleteProduct error: $e');
    }
  }

  // 5. Search a product
  Future<MyProduct?> searchProduct(String name, bool state) async {
    try {
      QuerySnapshot query = await _productsCollection
          .where('name', isEqualTo: name)
          .where('state', isEqualTo: state)
          .limit(1) // only return up to the specified number of documents.
          .get(); // fetch the documents for this query.

      if (query.docs.isNotEmpty) {
        DocumentSnapshot doc = query.docs.first;
        return MyProduct.fromMap(doc, doc.data() as Map<String, dynamic>);
      }
    } catch (e) {
      debugPrint('deleteProduct error: $e');
    }
    return null;
  }
}
