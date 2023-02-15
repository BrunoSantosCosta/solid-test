import 'package:flutter/material.dart';

class TitleCenter extends StatelessWidget {
  const TitleCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hey there',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}