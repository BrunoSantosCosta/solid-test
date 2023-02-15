

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:solid_test/components/title_center.dart';
import 'package:solid_test/services/prefs_service.dart';
import 'package:solid_test/states/color.state.dart';
import 'package:solid_test/components/color_extension.dart';

class BackgroundColor extends StatefulWidget {
  const BackgroundColor({
    Key? key,
  }) : super(key: key);

  @override
  State<BackgroundColor> createState() => _BackgroundColorState();
}

class _BackgroundColorState extends State<BackgroundColor> {

  @override
  void initState() {
    PrefsService.searchData().then((value) {
      setState(() {
        color.newHex = value;
      });
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          color: color.newHex != null ? '${color.newHex}'.toColor() : Colors.white,
          child: const TitleCenter(),
        );
      },
    );
  }
}



