// Learn Flutter - Widget - InheritedWidget Example 01:
import 'package:flutter/material.dart';
import 'package:inheritedwidget_example_01/pages/home_page.dart';
import 'package:inheritedwidget_example_01/pages/my_page.dart';
import 'package:inheritedwidget_example_01/pages/my_other_page.dart';

void main() => runApp(const InheritedWidgetApp());

class InheritedWidgetApp extends StatelessWidget {
  const InheritedWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InheritedWidget Sample 01',
      routes: {
        '/': (context) => const HomePage(),
        '/my-page': (context) => const MyPage(),
        '/my-other-page': (context) => const MyOtherPage(),
      },
    );
  }
}

class FrogColor extends InheritedWidget {
  const FrogColor({super.key, required this.color, required super.child});

  final Color color;

  static FrogColor? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  static FrogColor of(BuildContext context) {
    final FrogColor? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(FrogColor oldWidget) => color != oldWidget.color;
}
