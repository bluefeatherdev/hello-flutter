// Learn Flutter - Widgets - showModalBottomSheet Example 02:
import 'package:flutter/material.dart';

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        appBar: AppBar(title: const Text('showModalBottomSheet Sample 02')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Close BottomSheet'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Text('showModalBottomSheet'),
      ),
    );
  }
}
