import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectorColor;

  AppTheme({this.selectorColor = 0})
      : assert(selectorColor >= 0 && selectorColor <= _colorTheme.length -1,
            'Colors must be between 0 and ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorTheme[selectorColor]);
  }
}
