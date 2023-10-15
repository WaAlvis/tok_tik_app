/// VIdeoPost: con lo que realmente terminamos rabjando en la app
class VideoPost {
  //lo mas cercano, como debe fluir la lógica indiferente de la app.
  final String caption, videoUrl;
  final int views, likes;

  VideoPost({
    required this.caption,
    required this.videoUrl,
    this.views = 0,
    this.likes = 0,
  });
}
