import 'package:flutter/material.dart';
import 'package:testapp/common_widgets/custom_app_bar.dart';
import 'package:testapp/screens/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: "AyouByte",
        leading: const Icon(Icons.menu),
        actions: [
          CircleAvatar(
            radius: 18.0,
            child: Image.asset("assets/images/avatar.png"),
          )
        ],
      ),
      body: const HomeBody(),
    );
  }
}
