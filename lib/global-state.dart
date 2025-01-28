import 'package:flutter/foundation.dart';
import './screens/main/state.dart';

class GlobalState extends ChangeNotifier {
  final MainState mainState = MainState();

  GlobalState() {
    mainState.addListener(() {
      notifyListeners();
    });
  }
}
