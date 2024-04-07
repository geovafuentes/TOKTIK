import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoDatasource;

  VideoPostsRepositoryImpl({required this.videoDatasource});

  @override
  Future<List<VideoPost>> getTrendingVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videoDatasource.getTrendingVideoByPage(page);
  }
}
