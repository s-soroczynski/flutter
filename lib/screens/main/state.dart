import 'package:flutter/foundation.dart';

class MainState extends ChangeNotifier {
  bool showSuccessSnackbar = false;

  void setShowSuccessSnackbar(bool value) {
    showSuccessSnackbar = value;
  }
}
