// Learn Flutter - Firebase - Minimal Social Media App:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:minimal_social_media_app/components/my_drawer.dart';
import 'package:minimal_social_media_app/components/my_list_tile.dart';
import 'package:minimal_social_media_app/components/my_post_button.dart';
import 'package:minimal_social_media_app/components/my_textfield.dart';
import 'package:minimal_social_media_app/database/firestore_database.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // firestore access
  final FirestoreDatabase firestoreDatabase = FirestoreDatabase();

  // Text controller
  final TextEditingController newPostController = TextEditingController();

  // Date format
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');

  // post message
  void postMessage() {
    // only post message if there is something in the textfield
    if (newPostController.text.isNotEmpty) {
      String message = newPostController.text;
      firestoreDatabase.addPost(message);
    }

    // clear the controller
    newPostController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('W A L L'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: Column(
        children: <Widget>[
          // Textfield box for user to type
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: <Widget>[
                // textfield
                Expanded(
                  child: MyTextField(
                    hintText: 'Say something...',
                    obscureText: false,
                    controller: newPostController,
                  ),
                ),

                // post button
                MyPostButton(onTap: postMessage),
              ],
            ),
          ),

          // Posts
          StreamBuilder(
            stream: firestoreDatabase.getPostsStream(),
            builder: (context, snapshot) {
              // show loading circle
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              // get all posts
              final posts = snapshot.data!.docs;

              // no data?
              if (snapshot.data == null || posts.isEmpty) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text('No posts... Post something!'),
                  ),
                );
              }

              // return as a list
              return Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    // get each individual post
                    final post = posts[index];

                    // get data from each post
                    String message = post['PostMessage'];
                    String userEmail = post['UserEmail'];
                    Timestamp timestamp = post['TimeStamp'];

                    // return as a list tile
                    return MyListTile(
                      title: message,
                      subtitle:
                          '$userEmail\n${formatter.format(timestamp.toDate())}',
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
