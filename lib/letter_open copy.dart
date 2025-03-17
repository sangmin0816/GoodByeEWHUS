import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'letterScreen.dart';

class LetterOpen extends StatefulWidget {
  @override
  _letterOpenState createState() => _letterOpenState();
}

class _letterOpenState extends State<LetterOpen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 223, 252, 182),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => LetterScreen());
              },
              child: SvgPicture.asset(
                'lib/assets/letter_open_2.svg',
                width: 400,
                height: 250,
              ),
            ),
            Text(
              '교생 선생님의 편지',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '* 클릭해주세요 *',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '* 음악이 나와요 *',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
