import 'package:equatable/equatable.dart';

abstract class BlogEvent extends Equatable {
  const BlogEvent();
}

class FetchBlogs extends BlogEvent {
  @override
  List<Object> get props => [];
}
