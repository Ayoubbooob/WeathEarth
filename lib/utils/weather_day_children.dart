import 'package:flutter/material.dart';
import 'package:testapp/utils/constants/text_style.dart';

var sunnyDayChildren = [
  const Text(
    'Sunny Day',
    style: TextStyle(
        fontSize: 20.0,
        color: Colors.white, // Color(0xff5F6368),
        fontFamily: 'Calligraffitti',
        fontWeight: FontWeight.w800),
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/images/cloudy-day.png'),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            '33°C',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 50.0,
                fontFamily: 'Calligraffitti'),
          ),
          Text(
            '🕐11:20 am',
            style: kSmallTextStyle,
          ),
          Text(
            '🏠Ensias, Rabat',
            style: kSmallTextStyle,
          ),
        ],
      )
    ],
  ),
];

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

List<Widget> dayDetails(
    String dayCondition, String imagePath, String temperature) {
  return [
    Text(
      dayCondition,
      style: const TextStyle(
          fontSize: 20.0,
          color: Colors.white, // Color(0xff5F6368),
          fontFamily: 'Calligraffitti',
          fontWeight: FontWeight.w800),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(imagePath),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              temperature,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 50.0,
                  fontFamily: 'Calligraffitti'),
            ),
          ],
        )
      ],
    ),
  ];
}
// var rainyShowersChildren = [
//   const Text(
//     'Rainy Showers',
//     style: TextStyle(
//         fontSize: 20.0,
//         color: Colors.white, // Color(0xff5F6368),
//         fontFamily: 'Calligraffitti',
//         fontWeight: FontWeight.w800),
//   ),
//   Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Image.asset('assets/images/rainny.png'),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             '22°C',
//             style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white,
//                 fontSize: 50.0,
//                 fontFamily: 'Calligraffitti'),
//           ),
//         ],
//       )
//     ],
//   ),
// ];
