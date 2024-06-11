import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ofline_web/myhome.dart';
import 'package:ofline_web/pages/all_screens.dart';
import 'package:ofline_web/utility/color.dart';


void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light));
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
      home: MediaQuery.of(context).size.width > 768 ? MyHomePage() : All_Screens(),
    );
  }
}