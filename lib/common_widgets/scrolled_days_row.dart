import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/day_circle.dart';
import 'package:testapp/screens/day-weather/day_weather_screen.dart';
import 'package:testapp/utils/constants/text_style.dart';

class ScrolledDaysRow extends StatelessWidget {
  const ScrolledDaysRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      scrollDirection: Axis.horizontal,
      // padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => switchToDayWeather(context, 'Sunday', 'Cloudy',
                'assets/images/cloudy.png', '14°C'),
            child: const CustomCircularContainer(
              containerChild: Text(
                'Sun',
                style: kDayTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => switchToDayWeather(
                context, 'Monday', 'Sunny', 'assets/images/sunny.png', '47°C'),
            child: const CustomCircularContainer(
              containerChild: Text(
                'Mon',
                style: kDayTextStyle,
              ),
            ),
          ),
          GestureDetector(
              onTap: () => switchToDayWeather(context, 'Tuesday',
                  'Rainny Showers', 'assets/images/rainny.png', '22°C'),
              //() {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const DayWeather(
              //           day: 'Tuesday',
              //           dayCondition: 'Rainny Showers',
              //           imagePath: 'assets/images/rainny.png',
              //           temperature: '22°C'),
              //     ),
              //   );
              // },
              //() {
              //   Navigator.pushNamed(context, 'dayWeather');
              // },
              child: const CustomCircularContainer(
                containerChild: Text(
                  'Tue',
                  style: kDayTextStyle,
                ),
              )),
          GestureDetector(
            onTap: () => switchToDayWeather(context, 'Wednesday', 'Sunny',
                'assets/images/sunny.png', '38°C'),
            child: const CustomCircularContainer(
              containerChild: Text(
                'Wed',
                style: kDayTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => switchToDayWeather(context, 'Thursday', 'Cloudy',
                'assets/images/cloudy.png', '10°C'),
            child: const CustomCircularContainer(
              containerChild: Text(
                'Thu',
                style: kDayTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => switchToDayWeather(
                context, 'Friday', 'Snowy', 'assets/images/snowy.png', '-5°C'),
            child: const CustomCircularContainer(
              containerChild: Text(
                'Fri',
                style: kDayTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => switchToDayWeather(context, 'Saturday', 'Rainny',
                'assets/images/rainny.png', '8°C'),
            child: const CustomCircularContainer(
              containerChild: Text(
                'Sat',
                style: kDayTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

void switchToDayWeather(BuildContext context, String day, String dayCond,
    String imagePath, String temperature) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DayWeather(
          day: day,
          dayCondition: dayCond,
          imagePath: imagePath,
          temperature: temperature),
    ),
  );
}

              // '22°C'