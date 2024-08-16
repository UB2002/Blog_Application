import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/Fetch_data.dart';
import 'bloc/blog_bloc.dart';
import 'view/blog_list_view.dart';
import 'view/blog_detail_view.dart';

void main() {
  runApp(BlogExplorerApp());
}

class BlogExplorerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
              create: (context) => BlogBloc(BlogRepository()),
              child: BlogListScreen(),
            ),
        '/details': (context) => BlogDetailScreen(),
      },
    );
  }
}
