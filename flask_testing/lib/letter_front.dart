import 'package:flask_testing/letter_open.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:flask_testing/letter_open.dart';

class LetterFront extends StatefulWidget {
  @override
  _letterFrontState createState() => _letterFrontState();
}

class _letterFrontState extends State<LetterFront> {
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
                Get.to(() => LetterOpen());
              },
              child: SvgPicture.asset(
                'lib/assets/letter_front.svg',
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
          ],
        ),
      ),
    );
  }
}
