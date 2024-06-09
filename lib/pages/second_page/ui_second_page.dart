import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ofline_web/utility/color.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:ofline_web/utility/widgets.dart';

class Problem_Screen extends StatefulWidget {
  const Problem_Screen({super.key});

  @override
  State<Problem_Screen> createState() => _Problem_ScreenState();
}

void playSound (int number)  {
  final player = AudioPlayer();
  player.play(AssetSource('Ofline_${number}.wav'));

}

final List<String> discoverability_image = [
  'https://images.unsplash.com/photo-1665463267241-a1e38b223da1?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1612731614590-7dc805867afa?q=80&w=1942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1580793241553-e9f1cce181af?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1604719312566-8912e9227c6a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1561385945-c99789cd12d1?q=80&w=1895&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

final List<String> waiting_image = [
  'https://images.unsplash.com/photo-1522771633140-c9dd02efbdb5?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1613946069412-38f7f1ff0b65?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1567264401194-806d5f4b4d6c?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1528952686551-542043782ab9?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1553321846-ad6616f5d1db?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
];

final List<String> uncertainty_image = [
  'https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1545601445-4d6a0a0565f0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1553928452-470cd600e132?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1596854701922-3f3cbaed4ce2?q=80&w=1778&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1580281657527-47f249e8f4df?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

late List<Widget> _pages1;
late List<Widget> _pages2;
late List<Widget> _pages3;

int _activePage1 = 0;
int _activePage2 = 0;
int _activePage3 = 0;
final PageController _pageController1 = PageController(initialPage: 0);
final PageController _pageController2 = PageController(initialPage: 0);
final PageController _pageController3 = PageController(initialPage: 0);
Timer? _timer1;
Timer? _timer2;
Timer? _timer3;


class _Problem_ScreenState extends State<Problem_Screen> {

  double getResponsiveFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    // Assuming base width is 1080, adjust the base width as per your design
    return baseFontSize * screenWidth / 1080;
  }



  void startTimer1() {
    _timer1 = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_pageController1.page == discoverability_image.length - 1) {
        // _pageController.animateTo(0,
        //     duration: const Duration(milliseconds: 500),
        //     curve: Curves.easeInOut);
        _timer1!.cancel();
      } else {
        _pageController1.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }
  void startTimer2() {
    _timer2 = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_pageController2.page == waiting_image.length - 1) {
        // _pageController.animateTo(0,
        //     duration: const Duration(milliseconds: 500),
        //     curve: Curves.easeInOut);
        _timer2!.cancel();
      } else {
        _pageController2.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }
  void startTimer3() {
    _timer3 = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_pageController3.page == uncertainty_image.length - 1) {
        // _pageController.animateTo(0,
        //     duration: const Duration(milliseconds: 500),
        //     curve: Curves.easeInOut);
        _timer3!.cancel();
      } else {
        _pageController3.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages1 = List.generate(
        discoverability_image.length,
        (index) => ImagePlacehoider(
            imagePath: discoverability_image[index]
        ));
    _pages2 = List.generate(
        waiting_image.length,
        (index) => ImagePlacehoider(
            imagePath: waiting_image[index]
        ));
    _pages3 = List.generate(
        uncertainty_image.length,
        (index) => ImagePlacehoider(
            imagePath: uncertainty_image[index]
        ));

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer1?.cancel();
    _timer2?.cancel();
    _timer3?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding:
            EdgeInsets.only(top: mqh * 120 / 2340, bottom: mqh * 45 / 2340),
            child:  Center(
                child: Text(
                  'Problems',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: kBlue,
                      fontWeight: FontWeight.w900,
                      fontSize: mqh / 25),
                )),
          ),
          SizedBox(height: mqh / 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mqw * 100 / 1080),
            child: mqw > 768 ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: mqh * 1150 / 2340,
                          width: mqw * 260 / 1080,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: PageView.builder(
                                controller: _pageController1,
                                itemCount: discoverability_image.length,

                                onPageChanged: (value){
                                  setState(() {
                                    _activePage1 = value;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return _pages1[index];
                                }),
                          ),
                        ),
                        Positioned(
                          bottom: mqh * 70 / 2340,
                          right: mqw * 60 / 1080,
                          child:  Center(
                            child: Text(
                              'Discoverability',
                              style: TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w800,
                                  fontSize: getResponsiveFontSize(context, 19),
                                  // letterSpacing: 0.5,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 300,
                            // height: 100,
                            color: Colors.transparent,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _pages1.length,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          _pageController1.animateToPage(index,
                                              duration:
                                              const Duration(milliseconds: 500),
                                              curve: Curves.easeInOutCubicEmphasized);

                                        },
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor:
                                          _activePage1 == index
                                              ? Colors.transparent
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mqh * 160 / 2340),
                    InkWell(
                      onTap: (){
                        startTimer1();
                        playSound(2);
                      },
                      child: Center(
                        child: Container(
                          height: mqh * 122.5 / 2340,
                          width: mqw * 60 / 1080,
                          decoration: BoxDecoration(
                              color: kBlue, borderRadius: BorderRadius.circular(7)),
                          child:  Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: getResponsiveFontSize(context, 11),
                                    letterSpacing: 0.5,
                                    color: kWhite),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: mqh * 1150 / 2340,
                          width: mqw * 260 / 1080,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: PageView.builder(
                                controller: _pageController2,
                                itemCount: waiting_image.length,

                                onPageChanged: (value){
                                  setState(() {
                                    _activePage2 = value;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return _pages2[index];
                                }),
                          ),
                        ),
                        Positioned(
                          bottom: mqh * 70 / 2340,
                          left: mqw * 93 / 1080,
                          child:  Center(
                            child: Text(
                              'Waiting',
                              style: TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w800,
                                  fontSize: getResponsiveFontSize(context, 19),
                                  // letterSpacing: 0.5,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 300,
                            // height: 100,
                            color: Colors.transparent,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _pages2.length,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          _pageController2.animateToPage(index,
                                              duration:
                                              const Duration(milliseconds: 500),
                                              curve: Curves.easeInOutCubicEmphasized);

                                        },
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor:
                                          _activePage2 == index
                                              ? Colors.transparent
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mqh * 160 / 2340),
                    InkWell(
                      onTap: (){
                        startTimer2();
                        playSound(4);
                      },
                      child: Center(
                        child: Container(
                          height: mqh * 122.5 / 2340,
                          width: mqw * 60 / 1080,
                          decoration: BoxDecoration(
                              color: kBlue, borderRadius: BorderRadius.circular(7)),
                          child:  Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: getResponsiveFontSize(context, 11),
                                    letterSpacing: 0.5,
                                    color: kWhite),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: mqh * 1150 / 2340,
                          width: mqw * 260 / 1080,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: PageView.builder(
                                controller: _pageController3,
                                itemCount: uncertainty_image.length,

                                onPageChanged: (value){
                                  setState(() {
                                    _activePage3 = value;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return _pages3[index];
                                }),
                          ),
                        ),
                        Positioned(
                          bottom: mqh * 70 / 2340,
                          right: mqw * 70 / 1080,
                          child:  Center(
                            child: Text(
                              'Uncertainty',
                              style: TextStyle(
                                  color: kWhite,
                                  fontWeight: FontWeight.w800,
                                  fontSize: getResponsiveFontSize(context, 19),
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 300,
                            // height: 100,
                            color: Colors.transparent,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _pages3.length,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          _pageController3.animateToPage(index,
                                              duration:
                                              const Duration(milliseconds: 500),
                                              curve: Curves.easeInOutCubicEmphasized);

                                        },
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor:
                                          _activePage3 == index
                                              ? Colors.transparent
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mqh * 160 / 2340),
                    InkWell(
                      onTap: (){
                        startTimer3();
                        playSound(3);
                      },
                      child: Center(
                        child: Container(
                          height: mqh * 122.5 / 2340,
                          width: mqw * 60 / 1080,
                          decoration: BoxDecoration(
                              color: kBlue, borderRadius: BorderRadius.circular(7)),
                          child:  Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: getResponsiveFontSize(context, 11),
                                    letterSpacing: 0.5,
                                    color: kWhite),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mqh * 0.8),
              ],
            ) :
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: mqh * 1150 / 2340,
                          width: mqw / 1.5,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: PageView.builder(
                                controller: _pageController1,
                                itemCount: discoverability_image.length,

                                onPageChanged: (value){
                                  setState(() {
                                    _activePage1 = value;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return _pages1[index];
                                }),
                          ),
                        ),
                        Positioned(
                          bottom: mqh * 70 / 2340,
                          child:  Container(
                            width: mqw * 0.65,
                            child: Center(
                              child: Text(
                                'Discoverability',
                                style: TextStyle(
                                    color: kWhite,
                                    fontWeight: FontWeight.w800,
                                    fontSize: mqh / 35,
                                    // letterSpacing: 0.5,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          )
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 300,
                            // height: 100,
                            color: Colors.transparent,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _pages1.length,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          _pageController1.animateToPage(index,
                                              duration:
                                              const Duration(milliseconds: 500),
                                              curve: Curves.easeInOutCubicEmphasized);

                                        },
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor:
                                          _activePage1 == index
                                              ? Colors.transparent
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mqh / 50),
                    InkWell(
                      onTap: (){
                        startTimer1();
                        playSound(2);
                      },
                      child: Center(
                        child: Container(
                          height: mqh * 122.5 / 2340,
                          width: mqw / 8,
                          decoration: BoxDecoration(
                              color: kBlue, borderRadius: BorderRadius.circular(7)),
                          child:  Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: mqh / 65,
                                    letterSpacing: 0.5,
                                    color: kWhite),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: mqh / 50),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: mqh * 1150 / 2340,
                          width: mqw / 1.5,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: PageView.builder(
                                controller: _pageController2,
                                itemCount: waiting_image.length,

                                onPageChanged: (value){
                                  setState(() {
                                    _activePage2 = value;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return _pages2[index];
                                }),
                          ),
                        ),
                        Positioned(
                          bottom: mqh * 70 / 2340,
                          child:  Container(
                            width: mqw * 0.65,
                            child: Center(
                              child: Text(
                                'Waiting',
                                style: TextStyle(
                                    color: kWhite,
                                    fontWeight: FontWeight.w800,
                                    fontSize: mqh / 35,
                                    // letterSpacing: 0.5,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          )
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 300,
                            // height: 100,
                            color: Colors.transparent,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _pages2.length,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          _pageController2.animateToPage(index,
                                              duration:
                                              const Duration(milliseconds: 500),
                                              curve: Curves.easeInOutCubicEmphasized);

                                        },
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor:
                                          _activePage2 == index
                                              ? Colors.transparent
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mqh / 50),
                    InkWell(
                      onTap: (){
                        startTimer2();
                        playSound(4);
                      },
                      child: Center(
                        child: Container(
                          height: mqh * 122.5 / 2340,
                          width: mqw / 8,
                          decoration: BoxDecoration(
                              color: kBlue, borderRadius: BorderRadius.circular(7)),
                          child:  Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: mqh / 65,
                                    letterSpacing: 0.5,
                                    color: kWhite),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: mqh / 50),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: mqh * 1150 / 2340,
                          width: mqw / 1.5,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: PageView.builder(
                                controller: _pageController3,
                                itemCount: uncertainty_image.length,

                                onPageChanged: (value){
                                  setState(() {
                                    _activePage3 = value;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return _pages3[index];
                                }),
                          ),
                        ),
                        Positioned(
                          bottom: mqh * 70 / 2340,
                          child:  Container(
                            width: mqw * 0.65,
                            child: Center(
                              child: Text(
                                'Uncertainty',
                                style: TextStyle(
                                    color: kWhite,
                                    fontWeight: FontWeight.w800,
                                    fontSize: mqh / 35,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          )
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 300,
                            // height: 100,
                            color: Colors.transparent,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                    _pages3.length,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          _pageController3.animateToPage(index,
                                              duration:
                                              const Duration(milliseconds: 500),
                                              curve: Curves.easeInOutCubicEmphasized);

                                        },
                                        child: CircleAvatar(
                                          radius: 4,
                                          backgroundColor:
                                          _activePage3 == index
                                              ? Colors.transparent
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: mqh / 50),
                    InkWell(
                      onTap: (){
                        startTimer3();
                        playSound(3);
                      },
                      child: Center(
                        child: Container(
                          height: mqh * 122.5 / 2340,
                          width: mqw / 8,
                          decoration: BoxDecoration(
                              color: kBlue, borderRadius: BorderRadius.circular(7)),
                          child:  Center(
                              child: Text(
                                'Play',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: mqh / 65,
                                    letterSpacing: 0.5,
                                    color: kWhite),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: mqh / 50),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
