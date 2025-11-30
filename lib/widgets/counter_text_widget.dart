import 'package:flutter/material.dart';

class CounterTextWidget extends StatelessWidget {
  final int counter;
  const CounterTextWidget({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        const Text(
          'You have pushed the button this many times:',
          style: TextStyle(color: Colors.red, fontSize: 12),
        ),
        Text('$counter', style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
