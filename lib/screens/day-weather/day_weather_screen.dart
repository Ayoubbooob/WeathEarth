import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/custom_app_bar.dart';
import 'package:testapp/common_widgets/my_card.dart';
import 'package:testapp/screens/day-weather/day_weather_scroll_row.dart';
import 'package:testapp/screens/day-weather/weather_desc.dart';
import 'package:testapp/utils/weather_day_children.dart';
import 'package:weather_icons/weather_icons.dart';

class DayWeather extends StatelessWidget {
  const DayWeather(
      {super.key,
      required this.day,
      required this.dayCondition,
      required this.imagePath,
      required this.temperature});

  final String day;
  final String dayCondition;
  final String imagePath;
  final String temperature;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: day,
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back)),
          actions: const [Icon(Icons.more_vert)]),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: DayWeatherScrollRow(),
            ),
            Expanded(
              flex: 2,
              child: MyCard(
                cardChildren: dayDetails(dayCondition, imagePath, temperature),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherDesc(
                    icon: WeatherIcons.strong_wind,
                    value: '${Random().nextInt(501)}',
                    label: 'Air Quality',
                  ),
                  WeatherDesc(
                    icon: WeatherIcons.barometer,
                    value: '${Random().nextInt(1031) + 980}hpa',
                    label: 'Presure',
                  ),
                  WeatherDesc(
                    icon: WeatherIcons.sunrise,
                    value: '${Random().nextInt(11)}',
                    label: 'Uv',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const WeatherDesc(
                    icon: WeatherIcons.snow_wind,
                    value: '${3}mm',
                    label: 'Precipitation',
                  ),
                  WeatherDesc(
                    icon: WeatherIcons.wind_direction,
                    value: '${Random().nextInt(200)}km/h',
                    label: 'Wind',
                  ),
                  const WeatherDesc(
                    icon: WeatherIcons.alien,
                    value: '5.4km',
                    label: 'Visible',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
