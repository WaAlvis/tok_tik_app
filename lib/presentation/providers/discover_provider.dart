import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  DiscoverProvider() {
    print('Discover Provider inicializado');
  }
  List<VideoPost> videos = [];
  bool intialLoadinf = true;

  loadNextPage() {
    //TODO: cargar los videos
  }
}
