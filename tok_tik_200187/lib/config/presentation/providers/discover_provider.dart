import 'package:flutter/material.dart';
import 'package:tok_tik_200187/domains/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videoa = [];

  Future<void> loadNextPage() async {
    notifyListeners();
  }
}
