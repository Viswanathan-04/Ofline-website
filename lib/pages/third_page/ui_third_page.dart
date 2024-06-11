import 'package:flutter/material.dart';
import 'package:ofline_web/pages/third_page/q&a.dart';
import 'package:ofline_web/utility/color.dart';
import 'package:url_launcher/url_launcher.dart';

class FAQ_Screen extends StatefulWidget {
  const FAQ_Screen({super.key});

  @override
  State<FAQ_Screen> createState() => _FAQ_ScreenState();
}

class _FAQ_ScreenState extends State<FAQ_Screen> {
  int? _isExpanded;
  double getResponsiveFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    // Assuming base width is 1080, adjust the base width as per your design
    return baseFontSize * screenWidth / 1080;
  }


  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;
    return SizedBox(
        width: double.infinity,
        height: mqh * 2340 / 2340,
        child: Column(
          children: [
            SizedBox(height: mqh * 125 / 2340),
             Center(
               child: Text(
                'FAQ',
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: kBlue, fontWeight: FontWeight.w900, fontSize: mqw > 768 ? mqh / 22 : mqh / 26),
                           ),
             ),
            mqw > 768 ? SizedBox(height: mqh * 150 / 2340): SizedBox(height: mqh / 2340,),
            Expanded(
              child: ListView.builder(

                  itemCount: QA.qa.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: mqh * 50 / 2340,
                            horizontal: mqw > 768 ? mqw * 120 / 1080 : mqw * 60 / 1080),
                        child: ExpansionTile(
                          initiallyExpanded: _isExpanded == index,
                          collapsedIconColor: kBlue,
                          iconColor: kBlue,
                          title:  Text(
                            QA.qa[index].question,
                            style:  TextStyle(
                                fontFamily: 'Inter',
                                color: kBlue,
                                fontWeight: FontWeight.w600,
                                fontSize: mqw > 768 ? mqh / 35 : mqh / 43),
                          ),
                          children: [
                            Container(
                              width: double.infinity,
                              child:  Padding(
                                padding:  EdgeInsets.symmetric(horizontal: mqw > 768 ? mqh / 35 : mqh / 43),
                                child: Text(
                                  QA.qa[index].answer,
                                  style:  TextStyle(
                                      fontFamily: 'Inter',
                                      color: kGrey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: mqw > 768 ? mqh / 40 : mqh / 49),
                                ),
                              ),
                            ),
                            SizedBox(height: mqh / 20,)
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              width: mqw,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: InkWell(
                        onTap: (){
                          launch('mailto:oflineshine@gmail.com');
                        },
                        child: Image.network(
                            height: mqh*70/2340,
                            // width: mqw*60/1080,
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Gmail_icon_%282020%29.svg/1024px-Gmail_icon_%282020%29.svg.png'),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        launch('https://www.linkedin.com/company/ofline/');
                      },
                      child: Image.asset(
                          height: mqh*80/2340,
                          // width: mqw*87/1080,
                          'images/In-Blue-48.png'),
                    ),
                  ],),
              ),
            ),
            SizedBox(height: mqh * 0.02,)
          ],
        ));
  }
}
