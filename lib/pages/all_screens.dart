import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ofline_web/pages/first_page/ui_first_page.dart';
import 'package:ofline_web/pages/second_page/ui_second_page.dart';
import 'package:ofline_web/pages/third_page/ui_third_page.dart';


class All_Screens extends StatefulWidget {
  const All_Screens({super.key});

  @override
  State<All_Screens> createState() => _All_ScreensState();
}

class _All_ScreensState extends State<All_Screens> {








  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return  const Scaffold(
        body:  SingleChildScrollView(
          dragStartBehavior: DragStartBehavior.down,
          // reverse: true,
          child: Column(children: [
            First_Screeen(),
            Problem_Screen(),
            FAQ_Screen()
        ],))
    );
  }
}
