import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _penSmallTwoFamily = 'PenSmallTwo';

  // MyFlutterApp
  static const IconData kpen =
      IconData(0xf304, fontFamily: _myFlutterAppFamily);

  // PenSmallTwo
  static const IconData kpencilAlt =
      IconData(0xe800, fontFamily: _penSmallTwoFamily);
}
