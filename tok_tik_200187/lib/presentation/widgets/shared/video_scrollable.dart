import 'package:flutter/material.dart';
import 'package:tok_tik_200187/config/theme/app_theme.dart';
import 'package:tok_tik_200187/presentation/widgets/shared/video_buttons.dart';
import 'package:tok_tik_200187/domains/entities/video_post.dart';
import 'package:tok_tik_200187/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final VideoPost videoPost = videos[index];

          return Stack(
            children: [
              SizedBox(
                child: FullScreenPlayer(
                  caption: videoPost.caption,
                  videoUrl: videoPost.videoUrl,
                ),
              ),

            
              Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          ]);
        });
  }
}

