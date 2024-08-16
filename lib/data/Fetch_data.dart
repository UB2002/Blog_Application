import 'dart:convert';
import 'package:http/http.dart' as http;

class BlogRepository {
  final String _url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  final String _adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

  Future<List<dynamic>> fetchBlogs() async {
    final response = await http.get(Uri.parse(_url), headers: {
      'x-hasura-admin-secret': _adminSecret,
    });

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['blogs']; // Assuming the response contains a 'blogs' key


    } else {
      throw Exception('Failed to load blogs');
    }
  }
}


/*

this is for knowing what kind of data will the api retur ??

void main() async {
  BlogRepository blogRepository = BlogRepository();

  try {
    List<dynamic> blogs = await blogRepository.fetchBlogs();

    // Loop through the list of blogs and print details
    for(var i=0; i<1; i++)
    //for (var blog in blogs) 
    {
      var blog = blogs[i];
      print(blog);
      print("ID: ${blog['id']}");
      print("Title: ${blog['title']}");
      print("Image URL: ${blog['image_url']}");
      print(""); // Print an empty line for better readability
    }
  } catch (e) {
    print(e);
  }
}

*/