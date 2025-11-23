// Universidad de la Costa - Computación Móvil - Flutter Application 15:
import 'package:cloud_firestore/cloud_firestore.dart';

class MyProduct {
  final String id;
  final String name;
  final String price;
  final bool state;

  MyProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.state,
  });

  /// Factory constructor to build a MyProduct from Firestore document
  factory MyProduct.fromMap(DocumentSnapshot doc, Map<String, dynamic> data) {
    return MyProduct(
      id: doc.id,
      name: data['name'] ?? '',
      price: data['price'] ?? '',
      state: data['state'] ?? false,
    );
  }

  /// Convert MyProduct to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {'name': name, 'price': price, 'state': state};
  }
}
