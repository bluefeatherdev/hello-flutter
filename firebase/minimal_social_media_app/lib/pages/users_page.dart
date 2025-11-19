// Learn Flutter - Firebase - Minimal Social Media App:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:minimal_social_media_app/components/my_back_button.dart';
import 'package:minimal_social_media_app/components/my_list_tile.dart';
import 'package:minimal_social_media_app/helpers/helper_functions.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Users').snapshots(),
        builder: (context, snapshot) {
          // any errors
          if (snapshot.hasError) {
            displayMessageToUser('Something went wrong', context);
          }

          // show loading circle
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.data == null) {
            return const Text('No data');
          }

          // get all users
          final users = snapshot.data!.docs;

          return Column(
            children: <Widget>[
              // back button
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 25.0),
                child: Row(children: <Widget>[MyBackButton()]),
              ),

              // list of users in the app
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  padding: const EdgeInsets.only(
                    top: 23.0,
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                  ),
                  itemBuilder: (context, index) {
                    // get individual user
                    final user = users[index];

                    // get data form each user
                    String username = user['username'];
                    String email = user['email'];

                    // return as a list tile
                    return MyListTile(title: username, subtitle: email);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
