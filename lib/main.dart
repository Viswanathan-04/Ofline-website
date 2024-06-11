import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ofline_web/pages/all_screens.dart';
import 'package:ofline_web/utility/color.dart';


void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kWhite,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: kWhite,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const OflineWeb());
}

class OflineWeb extends StatefulWidget {
  const OflineWeb({super.key});

  @override
  State<OflineWeb> createState() => _OflineWebState();
}

class _OflineWebState extends State<OflineWeb> {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Inter'
      ),
      title: 'Ofline',
      home: const All_Screens(),
    );
  }
}