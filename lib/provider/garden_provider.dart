import 'package:flutter/widgets.dart';

class GardenProvider extends ChangeNotifier {
  ///User enable isometric view in the garden
  bool _isIsometric = true;
  bool get isIsometric => _isIsometric;

  set isIsometric(bool value) {
    _isIsometric = value;
    notifyListeners();
  }
}
