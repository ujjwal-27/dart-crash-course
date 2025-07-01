import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();

  print(post.title);
}

Future<Post> fetchPost() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  final response = await http.get(url);

  Map<String, dynamic> data = convert.jsonDecode(response.body);

  return Post(data["title"], data["userId"]);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
