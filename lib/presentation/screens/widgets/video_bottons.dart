import 'package:flutter/material.dart';
import 'package:tok_tik_app/config/helpers/human_format.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:animate_do/animate_do.dart' as animate_do;

class VideoBottons extends StatelessWidget {
  const VideoBottons(this.videoPost, {super.key});

  final VideoPost videoPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _IconVideo(
          icon: Icons.favorite,
          colorIcon: Colors.red,
          value: videoPost.likes,
        ),
        _IconVideo(
          icon: Icons.remove_red_eye_outlined,
          value: videoPost.views,
        ),
        animate_do.SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _IconVideo(
            icon: Icons.play_circle_outline_outlined,
            value: 0,
          ),
        ),
      ],
    );
  }
}

class _IconVideo extends StatelessWidget {
  final IconData icon;
  final int value;
  final Color color;

  const _IconVideo({required this.icon, required this.value, colorIcon})
      : color = colorIcon ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: 30,
          ),
        ),
        if (value > 0) Text(HumanFormat.readbleNumber(value))
      ],
    );
  }
}
