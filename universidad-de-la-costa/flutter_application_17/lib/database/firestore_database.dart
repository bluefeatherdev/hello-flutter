// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreDatabase {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // ==================== USUARIOS ====================

  Future<void> createUserDocument({
    required String uid,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String zone,
    required List<String> availableDays,
  }) async {
    try {
      await _firestore.collection('users').doc(uid).set({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'phone': phone,
        'zone': zone,
        'availableDays': availableDays,
        'role': 'volunteer',
        'totalHours': 0,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Error al crear usuario: $e');
    }
  }

  Stream<Map<String, dynamic>?> currentUserStream() {
    String? uid = _auth.currentUser?.uid;
    if (uid == null) return Stream.value(null);

    return _firestore
        .collection('users')
        .doc(uid)
        .snapshots()
        .map((doc) => doc.data());
  }

  // ==================== PARCELAS ====================

  Future<void> createParcela({
    required String name,
    required String size,
    required String cropType,
    String status = 'activa',
    String? assignedTo,
  }) async {
    try {
      await _firestore.collection('parcelas').add({
        'name': name,
        'size': size,
        'cropType': cropType,
        'status': status,
        'assignedTo': assignedTo,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Error al crear parcela: $e');
    }
  }

  Stream<List<Map<String, dynamic>>> getAllParcelas() {
    return _firestore
        .collection('parcelas')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => {'id': doc.id, ...doc.data()})
              .toList(),
        );
  }

  Future<void> deleteParcela(String parcelaId) async {
    try {
      await _firestore.collection('parcelas').doc(parcelaId).delete();
    } catch (e) {
      throw Exception('Error al eliminar parcela: $e');
    }
  }

  // ==================== TAREAS ====================

  Future<void> createTask({
    required String title,
    required String description,
    required String type,
    required String parcelaId,
    required DateTime date,
    String? assignedTo,
  }) async {
    try {
      await _firestore.collection('tasks').add({
        'title': title,
        'description': description,
        'type': type,
        'parcelaId': parcelaId,
        'assignedTo': assignedTo,
        'date': Timestamp.fromDate(date),
        'status': 'pendiente',
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Error al crear tarea: $e');
    }
  }

  Stream<List<Map<String, dynamic>>> getUserTasks(String userId) {
    return _firestore
        .collection('tasks')
        .where('assignedTo', isEqualTo: userId)
        .orderBy('date')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => {'id': doc.id, ...doc.data()})
              .toList(),
        );
  }

  // ==================== PARTICIPACIÓN ====================

  Future<void> registerParticipation({
    required String taskId,
    required double hoursWorked,
    String? notes,
  }) async {
    try {
      String? uid = _auth.currentUser?.uid;
      if (uid == null) throw Exception('Usuario no autenticado');

      await _firestore.collection('participation').add({
        'userId': uid,
        'taskId': taskId,
        'hoursWorked': hoursWorked,
        'date': FieldValue.serverTimestamp(),
        'notes': notes ?? '',
      });

      // Actualizar horas totales
      DocumentReference userRef = _firestore.collection('users').doc(uid);
      await _firestore.runTransaction((transaction) async {
        DocumentSnapshot userDoc = await transaction.get(userRef);
        double currentHours =
            (userDoc.data() as Map<String, dynamic>)['totalHours'] ?? 0.0;
        transaction.update(userRef, {'totalHours': currentHours + hoursWorked});
      });
    } catch (e) {
      throw Exception('Error al registrar participación: $e');
    }
  }
}
