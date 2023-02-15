// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ColorState on ColorStateBase, Store {
  late final _$colorAtom = Atom(name: 'ColorStateBase.color', context: context);

  @override
  ObservableList<dynamic> get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(ObservableList<dynamic> value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$newHexAtom =
      Atom(name: 'ColorStateBase.newHex', context: context);

  @override
  dynamic get newHex {
    _$newHexAtom.reportRead();
    return super.newHex;
  }

  @override
  set newHex(dynamic value) {
    _$newHexAtom.reportWrite(value, super.newHex, () {
      super.newHex = value;
    });
  }

  late final _$ColorStateBaseActionController =
      ActionController(name: 'ColorStateBase', context: context);

  @override
  dynamic generateRandomHexColor() {
    final _$actionInfo = _$ColorStateBaseActionController.startAction(
        name: 'ColorStateBase.generateRandomHexColor');
    try {
      return super.generateRandomHexColor();
    } finally {
      _$ColorStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color},
newHex: ${newHex}
    ''';
  }
}
