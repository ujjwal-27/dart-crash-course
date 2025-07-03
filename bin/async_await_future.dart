import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();

  print(post.title);
}

Future<Post> fetchPost() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  final response = await http.get(
    url,
    headers: {
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36',
      'Accept': 'application/json',
    },
  );

  print('Status code: ${response.statusCode}');
  print('Response body: ${response.body}');

  Map<String, dynamic> data = convert.jsonDecode(response.body);

  return Post(data["title"], data["userId"]);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
