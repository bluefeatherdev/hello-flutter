// Learn Flutter - Widgets - showModalBottomSheet Example 03:
import 'package:flutter/material.dart';

void main() => runApp(const ModalBottomSheetApp());

class ModalBottomSheetApp extends StatelessWidget {
  const ModalBottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('showModalBottomSheet Sample 03')),
        body: const ModalBottomSheetExample(),
      ),
    );
  }
}

enum AnimationStyles { defaultStyle, custom, none }

const List<(AnimationStyles, String)> animationStyleSegments =
    <(AnimationStyles, String)>[
      (AnimationStyles.defaultStyle, 'Default'),
      (AnimationStyles.custom, 'Custom'),
      (AnimationStyles.none, 'None'),
    ];

class ModalBottomSheetExample extends StatefulWidget {
  const ModalBottomSheetExample({super.key});

  @override
  State<ModalBottomSheetExample> createState() =>
      _ModalBottomSheetExampleState();
}

class _ModalBottomSheetExampleState extends State<ModalBottomSheetExample> {
  Set<AnimationStyles> _animationStyleSelection = <AnimationStyles>{
    AnimationStyles.defaultStyle,
  };
  AnimationStyle? _animationStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SegmentedButton<AnimationStyles>(
            onSelectionChanged: (Set<AnimationStyles> styles) {
              setState(() {
                _animationStyle = switch (styles.first) {
                  AnimationStyles.defaultStyle => null,
                  AnimationStyles.custom => const AnimationStyle(
                    duration: Duration(seconds: 3),
                    reverseDuration: Duration(seconds: 1),
                  ),
                  AnimationStyles.none => AnimationStyle.noAnimation,
                };
                _animationStyleSelection = styles;
              });
            },
            segments: animationStyleSegments
                .map<ButtonSegment<AnimationStyles>>((
                  (AnimationStyles, String) shirt,
                ) {
                  return ButtonSegment<AnimationStyles>(
                    value: shirt.$1,
                    label: Text(shirt.$2),
                  );
                })
                .toList(),
            selected: _animationStyleSelection,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                sheetAnimationStyle: _animationStyle,
                builder: (BuildContext context) {
                  return SizedBox.expand(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Modal bottom sheet'),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Close'),
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
        ],
      ),
    );
  }
}
