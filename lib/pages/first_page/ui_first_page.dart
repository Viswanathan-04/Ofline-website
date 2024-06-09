import 'package:flutter/material.dart';
import 'package:ofline_web/utility/color.dart';
import 'package:audioplayers/audioplayers.dart';



class First_Screeen extends StatefulWidget {
  const First_Screeen({super.key});

  @override
  State<First_Screeen> createState() => _First_ScreeenState();
}

class _First_ScreeenState extends State<First_Screeen> {


  double getResponsiveFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    // Assuming base width is 1080, adjust the base width as per your design
    return baseFontSize * screenWidth / 1080;
  }
  void playSound (int number)  {
    final player = AudioPlayer();
    player.play(AssetSource('Ofline_${number}.wav'));

  }



  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: mqh * 2340 / 2340,
      child: Stack(
        children: [
          GestureDetector(
            onTap: (){
              playSound(1);
            },
            child: Image.network(
              'https://images.unsplash.com/photo-1586366775916-7018ef19ff34?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
          ),
          Positioned(
              top: mqh * 1695 / 2340,
              child: Container(
                width: mqw,
                child: Center(
                  child: Text('OFLINE',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          letterSpacing: 1.5,
                          color: kWhite,
                          fontWeight: FontWeight.w900,
                          fontSize: mqh / 20)),
                ),
              )
          ),
          Positioned(
              top: mqh * 1850 / 2340,
              child: Container(
                width: mqw,
                child: Center(
                  child: Text('Your Local Market',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: kWhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                          fontSize: mqh / 40)
                  ),
                ),
              )
          ),
          Positioned(
            top: mqh * 2010 / 2340,
            left: mqw / 2.2,
            child: InkWell(
              onTap: (){
                playSound(5);
              },
              child: Container(
                height: mqh * 120 / 2340,
                width: mqw / 10,
                decoration: BoxDecoration(
                    color: kBlue, borderRadius: BorderRadius.circular(6)),
                child:  Center(
                    child: Text(
                  'App',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      fontSize: mqh / 70,
                      letterSpacing: 1,
                      color: kWhite),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
