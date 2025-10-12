// Universidad de la Costa - Computación Móvil - Flutter Application 12:
import 'package:flutter/material.dart';
import 'package:flutter_application_12/widgets/dev_signature.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => buildNotificationWidgets(context),
          child: const Text('Show AlertDialog', style: TextStyle(fontSize: 20)),
        ),
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }

  buildNotificationWidgets(BuildContext context) {
    Widget acceptButton = TextButton(
      onPressed: () {},
      child: const Text('Accept'),
    );
    Widget cancelButton = TextButton(
      onPressed: () {},
      child: const Text('Cancel'),
    );

    AlertDialog alertDialog = AlertDialog(
      title: const Text('Hello'),
      content: const Text('Some text for content'),
      actions: [acceptButton, cancelButton],
    );

    showDialog(context: context, builder: (context) => alertDialog);
  }
}
