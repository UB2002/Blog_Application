import 'package:flutter/material.dart';

class BlogDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final blog = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    print('Received blog: $blog'); // Debug print

    if (blog == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('No blog data available'),
        ),
      );
    }

    final String title = blog['title'] ?? 'No Title';
    final String imageUrl = blog['image_url'] ?? '';
    final String content = blog['content'] ?? 'Content  ...';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            if (imageUrl.isNotEmpty)
              Image.network(imageUrl),
            const SizedBox(height: 16),
            Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(content),

            const Icon(Icons.favorite),
          ],
        ),
      ),
    );
  }
}
