import 'package:tok_tik_app/domain/entities/video_post.dart';

/// LocalVideoModel: Entidad  sacada desde el Api
class LocalVideoModel {
  //propiedades son las que llegan de mi Json
  //match entre Api(json) con mi App(model-domain)
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  // reccibe el Json
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'no data name',
        videoUrl: json['videoUrl'],
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  /// mappear al modelo con el que trabajara mi app (model domain)
  VideoPost toVideoPostEntity() => 
      VideoPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
