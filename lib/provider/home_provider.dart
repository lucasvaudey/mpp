import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier {
  int _index = 0;
  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();
  }

  PageController controller = PageController(initialPage: 0);
}
