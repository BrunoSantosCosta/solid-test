


import 'dart:math';
import 'package:mobx/mobx.dart';
import 'package:solid_test/services/prefs_service.dart';
part 'color.state.g.dart';

late int length;
late String chars;
late String hex;
Random random = Random();
var color = ColorState();

class ColorState = ColorStateBase with _$ColorState;

abstract class ColorStateBase with Store {
  @observable
  ObservableList color = ObservableList();

  @observable
  dynamic newHex;

  @action
  generateRandomHexColor() {
    length = 6;
    chars = '0123456789ABCDEF';
    newHex = '#';
    while (length-- > 0) {
      newHex += chars[(random.nextInt(16)) | 0];
    }
    PrefsService.save(newHex);
    return newHex;
  }
}


