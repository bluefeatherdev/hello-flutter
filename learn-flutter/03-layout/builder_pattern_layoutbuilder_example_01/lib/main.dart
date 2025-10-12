// Learn Flutter - Layout - Builder Pattern - LayoutBuilder Example 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutBuilderApp());
}

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Builder Pattern LayoutBuilder Example 01'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return constraints.maxWidth <= 600
                ? MobileLayout()
                : DesktopLayout();
          },
        ),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) => BorderedImage(),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: <Widget>[
            Expanded(child: BorderedImage()),
            Expanded(child: BorderedImage()),
            Expanded(child: BorderedImage()),
          ],
        );
      },
    );
  }
}

class BorderedImage extends StatelessWidget {
  const BorderedImage({super.key, this.width = 200, this.height = 200});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          'https://docs.flutter.dev/assets/images/docs/fwe/dash-search.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
