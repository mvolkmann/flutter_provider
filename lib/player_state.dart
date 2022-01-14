import 'package:flutter/foundation.dart'; // defines ChangeNotifier

class PlayerState extends ChangeNotifier {
  var _name = 'Mark';

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }
}
