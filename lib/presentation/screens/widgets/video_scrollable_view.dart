import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/presentation/screens/widgets/widgets.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView(
    this.videos, {
    super.key,
  });

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (_, int index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //video + gradient
            SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.caption,
              ),
            ),

            // botones
            Positioned(
              bottom: 70,
              right: 20,
              child: VideoBottons(videoPost),
            )
          ],
        );
      },
    );
  }
}
