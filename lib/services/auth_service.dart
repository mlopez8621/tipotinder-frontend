import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String _baseUrl = 'http://192.168.1.10:3000'; // ← IP local para dispositivos físicos/emuladores
  //static const String _baseUrl = 'http://localhost:3000'; // ← IP local para dispositivos físicos/emuladores

  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('$_baseUrl/auth/login');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Correo o contraseña incorrectos');
    }
  }
}
