import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reastrants_app/pages/home/bannarPHotos.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Smoothpage1 extends StatelessWidget {
  Smoothpage1({Key? key}) : super(key: key);
  final _controller = PageController(viewportFraction: 0.8, keepPage: true);
   var index = bannarList.length;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
                  margin: EdgeInsets.only(top: 18, left: 20),
                  height: 161,
                  width: 340,
                  decoration: BoxDecoration(
          
                  ),
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: bannarList.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: NetworkImage(bannarList[index].thumbnailUrl),
                            fit: BoxFit.cover
                          )),
                        ),
                      );
                    }
                    ),
                ),
                SizedBox(height: 5,),
                SmoothPageIndicator(
                  controller: _controller, 
                  count: bannarList.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xFFC24D2C),
                    dotColor: Color(0xFFC24D2C).withOpacity(.6),
                    dotHeight: 30,
                    dotWidth: 30,
                  ),
                )
          ],
        ),
      ),
    );
  }
}

