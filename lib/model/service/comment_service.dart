import 'dart:convert';

import 'package:app_api/model/domain/comment.dart';
import 'package:http/http.dart' as http;

class CommentService {
  Future<List<Comment>?> buscaComment(int postId) async{


    String url = 'https://jsonplaceholder.typicode.com/posts/$postId/comments';

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      List<dynamic> consulta = jsonDecode(response.body);

      return consulta.map((c) => Comment.fromJson(c)).toList();
      
    }
    return null;
  }
}