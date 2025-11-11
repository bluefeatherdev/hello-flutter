// Learn Flutter - Firebase - CRUD Example 01:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud_example_01/services/firestore_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // firestore
  final FirestoreService firestoreService = FirestoreService();

  // text controller
  final TextEditingController textController = TextEditingController();

  // Open a dialog box to add a note
  void openNoteDialogBox({String? docId}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: TextField(controller: textController),
          actions: [
            // Button to save
            ElevatedButton(
              onPressed: () {
                docId == null
                    // add a new note
                    ? firestoreService.addNote(textController.text)
                    // update an existing note
                    : firestoreService.updateNote(docId, textController.text);
                // clear the text controller
                textController.clear();
                // close de box
                Navigator.pop(context);
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firebase CRUD Sample 01')),
      body: StreamBuilder(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          // if we have data, get all the docs
          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;
            // display as a list
            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                // get each individual doc
                DocumentSnapshot document = notesList[index];
                String docId = document.id;

                // get note from each doc
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String noteText = data['note'];

                // display as a list tile
                return ListTile(
                  title: Text(noteText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => openNoteDialogBox(docId: docId),
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () => firestoreService.deleteNote(docId),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Text('No notes founded...');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteDialogBox,
        child: const Icon(Icons.add),
      ),
    );
  }
}
