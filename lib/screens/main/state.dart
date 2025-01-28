import 'package:flutter/foundation.dart';

class MainState extends ChangeNotifier {
  bool isSuccess = false;

  void setSuccess(bool value) {
    isSuccess = value;
  }
}
