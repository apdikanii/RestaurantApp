import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reastrants_app/pages/home/bannarPHotos.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Smoothpage1 extends StatelessWidget {
  Smoothpage1({Key? key}) : super(key: key);
  final _controller = PageController(viewportFraction: 0.7, keepPage: true);
var index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              margin: EdgeInsets.only(top: 18),
              height: 161,
              width: 340,
              decoration: BoxDecoration(
      
              ),
              child: PageView.builder(
                controller: _controller,
                itemCount: bannarList.length,
                itemBuilder: (_, index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage(bannarList[index].thumbnailUrl),
                      fit: BoxFit.cover
                    )),
                  );
                }
                ),
            ),
            SmoothPageIndicator(
              controller: _controller, 
              count: bannarList.length,
              effect: JumpingDotEffect(
                dotHeight: 16,
                dotWidth: 16,
                jumpScale: .7,
                verticalOffset: 15,
              ),
            )
      ],
    );
  }
}

