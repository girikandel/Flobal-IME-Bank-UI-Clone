import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  final String image, serviceName;
  const ServicesWidget(
      {Key? key, required this.image, required this.serviceName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 40, width: 40),
        Text(
          serviceName,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
