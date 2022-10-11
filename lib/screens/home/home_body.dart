import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:testapp/common_widgets/my_card.dart';
import 'package:testapp/common_widgets/scrolled_days_row.dart';
import 'package:testapp/common_widgets/search_input_field.dart';
import 'package:testapp/utils/middle_titles.dart';
import 'package:testapp/utils/weather_day_children.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(child: SearchInputField()),
            Expanded(
              flex: 4,
              child: MyCard(
                cardChildren: sunnyDayChildren,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: kMiddleTitles,
              ),
            ),
            const Expanded(child: ScrolledDaysRow()),
            Expanded(
                flex: 4,
                child: MyCard(cardChildren: [
                  Expanded(
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      series: <LineSeries<DayTemperature, String>>[
                        LineSeries(
                            dataSource: <DayTemperature>[
                              DayTemperature(time: "9:00", temperature: 13),
                              DayTemperature(time: "9:30 ", temperature: 5),
                              DayTemperature(time: "10:00 ", temperature: 24),
                              DayTemperature(time: "10:30", temperature: 14),
                              DayTemperature(time: "11:00", temperature: 26.5),
                              DayTemperature(time: "11:30", temperature: 33),
                              DayTemperature(time: "12:00", temperature: 32),
                            ],
                            xValueMapper: (DayTemperature dayTemp, _) =>
                                dayTemp.time,
                            yValueMapper: (DayTemperature dayTemp, _) =>
                                dayTemp.temperature)
                      ],
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}

class DayTemperature {
  DayTemperature({required this.time, required this.temperature});
  final String time;
  final double temperature;
}
