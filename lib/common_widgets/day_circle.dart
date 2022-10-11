import 'package:flutter/material.dart';
import 'package:testapp/utils/constants/box_shadow.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({super.key, this.containerChild});

  final Widget? containerChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25.0),
      padding: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        color: Color(0xff1F242A),
        shape: BoxShape.circle,
        boxShadow: kDayBoxShadow,
      ),
      child: containerChild,
    );
  }
}
