import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('assets/77districts.png'),
        Image.asset('assets/banner.png'),
        Image.asset('assets/debitcard.png'),
        Image.asset('assets/euromoneyaward.png'),
        Image.asset('assets/fdloan.jpeg'),
        Image.asset('assets/globalremit.png'),
      ],
      options: CarouselOptions(
        height: 150,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
      ),
    );
  }
}
