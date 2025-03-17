import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'letter_download.dart';
import 'letter_back.dart';
import 'letter_front.dart';
import 'letter_open.dart';
import 'letterScreen.dart';
import 'letter_download.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EWUHS',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Nanum',
      ),
      home: LetterBack(),
      getPages: [
        GetPage(name: '/', page: () => LetterBack()),
        GetPage(
          name: '/letterfront',
          page: () => LetterFront(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/letteropen',
          page: () => LetterOpen(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/letterscript',
          page: () => LetterScreen(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/letterdownload',
          page: () => LetterDownload(),
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
