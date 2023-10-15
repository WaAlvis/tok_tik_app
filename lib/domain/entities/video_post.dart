class VideoPost {
  final String caption, videoUrl;
  final int views, likes;

  VideoPost({
    required this.caption,
    required this.videoUrl,
    this.views = 0,
    this.likes = 0,
  });
}
