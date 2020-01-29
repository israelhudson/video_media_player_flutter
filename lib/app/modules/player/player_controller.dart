import 'package:mobx/mobx.dart';
import 'package:video_media_player_flutter/app/shared/models/video_model.dart';

part 'player_controller.g.dart';

class PlayerController = _PlayerBase with _$PlayerController;

abstract class _PlayerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @observable
  List<VideoModel> videoList = [];

  @observable
  VideoModel videoModel;

}
