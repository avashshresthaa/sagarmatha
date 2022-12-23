import 'package:flutter_application_4/models/getposts.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  Future<List<Posts>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var body = response.body;
      return postsFromJson(body);
    }
  }
}
