import 'dart:developer';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:path_provider/path_provider.dart';
import 'letter_download.dart';
// import 'package:flask_testing/url_launcher.dart';

class LetterScreen extends StatefulWidget {
  @override
  _letterScreenState createState() => _letterScreenState();
}

class _letterScreenState extends State<LetterScreen> {
  late AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();

  @override
  void initState() {
    super.initState();
    _assetsAudioPlayer.open(
      Audio('/lib/assets/remember_me.mp3'),
      loopMode: LoopMode.single, //반복 여부 (LoopMode.none : 없음)
      autoStart: true, //자동 시작 여부
      showNotification: false, //스마트폰 알림 창에 띄울지 여부
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = '/lib/assets/last_letter.png';
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('lib/assets/background.jpg'),
        )),
        padding: EdgeInsets.all(30),
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  downloadFile('/lib/assets/last_letter.png');
                  // Get.to(() => LetterDownload());
                },
                child: Icon(Icons.download)),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: FutureBuilder(
                      future: loadAsset('lib/assets/letter.txt'),
                      builder: (context, snapshot) {
                        final contents = snapshot.data.toString();
                        return Container(
                            padding: EdgeInsets.all(20),
                            color: Color.fromARGB(160, 255, 255, 255),
                            child: Text(
                              contents,
                              style: TextStyle(fontSize: 25),
                            ));
                      },
                    ),
                  )
                ],
              ),
            ))));
  }

  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}
