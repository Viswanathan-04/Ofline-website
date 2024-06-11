import 'package:flutter/material.dart';
import 'package:ofline_web/pages/first_page/ui_first_page.dart';
import 'package:ofline_web/pages/second_page/ui_second_page.dart';
import 'package:ofline_web/pages/third_page/ui_third_page.dart';
import 'package:ofline_web/utility/color.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _onPointerTap(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: _onPageChanged,
            children: const [
              First_Screeen(),
              Problem_Screen(),
              FAQ_Screen(),
            ],
          ),
          Positioned(
            left: 10,
            top: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () => _onPointerTap(index),
                    child: CircleAvatar(
                      radius: 7.5,
                      backgroundColor: _currentPage == index ? kBlue : Colors.grey,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}