import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_media_player_flutter/app/modules/player/player_controller.dart';
import 'package:video_media_player_flutter/app/shared/models/video_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var playerController = Modular.get<PlayerController>();

  @override
  void initState() {
    // TODO: implement initState
    playerController.videoList.add(VideoModel("Borboleta", "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"));
    playerController.videoList.add(VideoModel("Urso", "https://www.w3schools.com/tags/movie.mp4"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: ()=>Navigator.pushNamed(context, 'player/'),
            child: Text(widget.title)),
      ),
      body: ListView.builder(
        itemCount: playerController.videoList.length,
        itemBuilder: (_, index){
          return Card(
            child: ListTile(
              title: Text(playerController.videoList[index].nome),
              onTap: (){
                Modular.to.pushNamed('player/$index', arguments: "fdsfs");
                playerController.videoModel = playerController.videoList[index];
              }
            ),
          );
        },
      ),
    );
  }
}
