import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik_200187/config/presentation/providers/discover_provider.dart';
import 'package:tok_tik_200187/config/presentation/widgets/shared/video_scrollable.dart';

class DiscoverScreens extends StatelessWidget {
  const DiscoverScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
        ? const Center( child : CircularProgressIndicator(strokeWidth: 2,))
        :  VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}
