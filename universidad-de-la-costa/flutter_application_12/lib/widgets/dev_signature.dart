// Universidad de la Costa - Computación Móvil - Flutter Application 12:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DevSignature extends StatelessWidget {
  const DevSignature({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Cloud not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
          children: [
            const TextSpan(text: 'Made with \'\\u{2665}\' (♥) by '),
            TextSpan(
              text: 'Jesús Domínguez',
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _launchUrl('https://github.com/bluefeatherdev');
                },
            ),
          ],
        ),
      ),
    );
  }
}
