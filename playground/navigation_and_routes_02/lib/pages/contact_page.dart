// Playground - Navigation and Routes Application 02:
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Page')),
      body: Center(
        child: Text(
          'This is Contact Page',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.brown,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Made with \'\\u{2665}\' (♥) by Jesús Domínguez',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
