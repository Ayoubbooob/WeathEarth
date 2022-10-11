import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/day_circle.dart';
import 'package:testapp/utils/constants/text_style.dart';

class WeatherDesc extends StatelessWidget {
  const WeatherDesc(
      {super.key,
      required this.icon,
      required this.value,
      required this.label});

  final String value;
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: CustomCircularContainer(
            containerChild: Icon(
              icon,
              color: const Color(0xffACAFB1),
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Text(
            value,
            style: kWeatherValueTextStyle,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Text(
            label,
            style: kWeatherLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
