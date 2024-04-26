/*
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl =
      'http://your-api-base-url.com'; //replace with your api base url

// helper methods to make a Get request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handelresponse(response);
  }

//helper method to make a post request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic date) async {
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'}, body: json.decode(date));
    return _handelresponse(response);
  }

//helper method to make a post request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic date) async {
    final response = await http.put(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'}, body: json.decode(date));
    return _handelresponse(response);
  }

// helper method to make a delet request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handelresponse(response);
  }

//handle the Http response
  static Map<String, dynamic> _handelresponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('failed to load data ${response.statusCode}');
    }
  }
}
*/