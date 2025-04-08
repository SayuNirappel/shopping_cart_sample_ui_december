import 'package:http/http.dart' as http;
import 'package:shopping_cart_may/conifg/app_config.dart';

class ApiHelper {
  static Future<String?> getData({required String endpoint}) async {
    final url = Uri.parse(AppConfig.baseUrl + endpoint);
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        print("Response data : ${response.body}");
        return response.body;
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("error: $e");
    }
    return null;
  }
}
