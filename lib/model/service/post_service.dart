import 'dart:convert';

import 'package:app_api/model/domain/post.dart';
import 'package:http/http.dart' as http;

class PostService {


  Future<List<Post>?> buscaPost() async{


    String url = 'https://jsonplaceholder.typicode.com/posts';

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      List<dynamic> consulta = jsonDecode(response.body);

      return consulta.map((p) => Post.fromJson(p)).toList();
      
    }
    return null;
  }


}