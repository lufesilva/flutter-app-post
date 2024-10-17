import 'dart:convert';

import 'package:app_api/model/domain/user.dart';
import 'package:http/http.dart' as http;

class UsuarioService {
  Future<List<User>?> buscaUser() async{

    String url = 'https://jsonplaceholder.typicode.com/users';

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      List<dynamic> consulta = jsonDecode(response.body);

      return consulta.map((p) => User.fromJson(p)).toList();
      
    }
    return null;
  }
}