import 'package:flutter/material.dart';
import 'package:tok_tik_200187/domains/entities/video_post.dart';
import 'package:tok_tik_200187/insfrastructure/models/local_video_model.dart';
import 'package:tok_tik_200187/shared/data/local_videos.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;

    //todo: cargar videos
    notifyListeners();
  }
}
