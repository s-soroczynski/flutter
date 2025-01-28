import 'package:checkout_redem/screens/main/repository.dart';
import 'package:flutter/foundation.dart';

class MainState extends ChangeNotifier {
  final MainRepository repository;
  bool isLoading = false;
  List<String> data = [];
  bool showSuccessSnackbar = false;

  MainState({required this.repository});

  Future<void> loadData() async {
    isLoading = true;
    notifyListeners();

    try {
      final results = await repository.fetchData();
      data = results;
    } catch (e) {
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void setShowSuccessSnackbar(bool value) {
    showSuccessSnackbar = value;
  }
}
