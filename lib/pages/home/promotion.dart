import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Promotion extends StatelessWidget
{
   final List<String> imageList = [
      "assets/images/promotion1.png",
      "assets/images/promotion2.png",
      "assets/images/promotion1.png",
      "assets/images/promotion2.png"
   ];

  @override
  Widget build(BuildContext context) {
    return Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              autoPlay: true,
            ),
            items: imageList.map((e) => ClipRRect(
             borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: <Widget>[
                  Image.network(e,
                  width: 140,
                  height: 110,
                  fit: BoxFit.cover,)
                ],
              ) ,
            )).toList(),
        ),
    );
  }
}