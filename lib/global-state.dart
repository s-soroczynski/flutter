import 'package:checkout_redem/screens/main/repository.dart';
import 'package:flutter/foundation.dart';
import './screens/main/state.dart';

class GlobalState extends ChangeNotifier {
  final MainState mainState = MainState(
    repository: MainRepository(baseUrl: 'https://example.com'),
  );

  GlobalState() {
    mainState.addListener(() {
      notifyListeners();
    });
  }
}
