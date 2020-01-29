import 'package:video_media_player_flutter/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_media_player_flutter/app/modules/home/home_page.dart';
import 'package:video_media_player_flutter/app/modules/player/player_controller.dart';
import 'package:video_media_player_flutter/app/modules/player/player_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => PlayerController()),
  ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/player/:id',
            child: (_, args) => PlayerPage(
                  id: args.params['id'],
                  title: "Player",
                ),
            transition: TransitionType.rightToLeftWithFade),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
