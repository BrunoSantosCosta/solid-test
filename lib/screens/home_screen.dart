import 'package:flutter/material.dart';
import 'package:solid_test/components/background_color.dart';
import 'package:solid_test/states/color.state.dart';

dynamic randomColor;

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        color.generateRandomHexColor(),
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Solid - Test'),
        ),
        body: const BackgroundColor(),
      ),
    );
  }
}
