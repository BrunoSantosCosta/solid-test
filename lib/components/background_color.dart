

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:solid_test/states/color.state.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          color: color.newColor,
          child: Center(
            child: Text(
              'Hey there',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        );
      },
    );
  }
}

