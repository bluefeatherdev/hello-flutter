// Universidad de la Costa - Computación Móvil - Flutter Application 12:
import 'package:flutter/material.dart';
import 'package:flutter_application_12/widgets/dev_signature.dart';

class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painting Example')),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                ),
                painter: DrawFigure(),
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'I love you',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.tealAccent.shade100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }
}

class DrawFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    var path = Path()
      ..moveTo(size.width * 0.5, 0)
      ..lineTo(0, size.width * 0.5)
      ..quadraticBezierTo(
        size.width * 0.5,
        size.height * 0.5,
        size.width * 0.5,
        size.height,
      )
      ..quadraticBezierTo(
        size.width * 0.5,
        size.height * 0.5,
        size.width,
        size.width * 0.5,
      )
      ..lineTo(size.width * 0.5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
