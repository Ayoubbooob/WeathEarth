import 'package:flutter/material.dart';
import 'package:testapp/utils/constants/box_shadow.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cardChildren,
  });

  final List<Widget> cardChildren;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xff1E2329),
        borderRadius: BorderRadius.circular(30),
        boxShadow: kCardBoxShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: cardChildren,
      ),
    );
  }
}
