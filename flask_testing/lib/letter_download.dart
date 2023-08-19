import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:flask_testing/letterScreen.dart';

class LetterDownload extends StatefulWidget {
  @override
  _letterDownloadState createState() => _letterDownloadState();
}

class _letterDownloadState extends State<LetterDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 223, 252, 182),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('lib/assets/last_letter.png'),
              fit: BoxFit.scaleDown,
            ),
            Text(
              '캡쳐하세요',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
