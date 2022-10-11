import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/day_circle.dart';
import 'package:testapp/utils/constants/text_style.dart';
import 'package:weather_icons/weather_icons.dart';

class DayWeatherScrollRow extends StatelessWidget {
  const DayWeatherScrollRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '3:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_cloudy,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '4:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_rain,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '5:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_sunny,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '6:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_lightning,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '7:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_snow,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '8:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_thunderstorm,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
          CustomCircularContainer(
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '9:00pm',
                  style: kDayTextStyle,
                ),
                Icon(
                  WeatherIcons.day_cloudy_gusts,
                  color: Color(0xffD4B20B),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
