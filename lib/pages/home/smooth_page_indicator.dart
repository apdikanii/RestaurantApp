import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reastrants_app/pages/home/bannarPHotos.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SmoothPage extends StatelessWidget {
  SmoothPage({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
            child: PageView.builder(
              itemCount: bannarList.length,
              itemBuilder: (context, index){
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
          SmoothPageIndicator(controller: _controller, 
          count: 4,
          
          )
        ],
      ),
    );
  }
  
}