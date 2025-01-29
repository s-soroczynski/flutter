import 'dart:convert';
import 'package:checkout_redem/mocks/mock_main.dart';
import 'package:http/http.dart' as http;

class MainRepository {
  final String baseUrl;

  MainRepository({required this.baseUrl});

  Future<List<String>> fetchData() async {
    final response = await http.get(Uri.parse('$baseUrl/test'));

    if (response.statusCode == 200) {
      final List decoded = jsonDecode(response.body) as List;
      return decoded.map((e) => e.toString()).toList();
    } else {
      throw Exception('Błąd pobierania danych: ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> fetchMockData() async {
    await Future.delayed(const Duration(seconds: 1));
    return mockMainData;
  }
}
