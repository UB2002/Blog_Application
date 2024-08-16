import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class BlogListItem extends StatelessWidget {
  final dynamic blog;

  const BlogListItem({Key? key, required this.blog}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      onTap: () {
        Navigator.pushNamed(context, '/details', arguments: blog);
      },
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Image.network(
            blog['image_url'],
            fit: BoxFit.cover,
            width:double.infinity,
            height: 250, // Adjust height as needed
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
          ),
          const SizedBox(height: 8), // Space between image and title
          Text(
            blog['title'],
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis, // Ensures text doesn't overflow
          ),
        ],
      ),
    );
  }
}


/*
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(blog['title']),
      leading: CachedNetworkImage(
        imageUrl: blog['image_url'],
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
        width: 50,
      ),
    
    onTap: (){
      Navigator.pushNamed(context, '/details', arguments: blog);
    },
    );
  }
}
*/