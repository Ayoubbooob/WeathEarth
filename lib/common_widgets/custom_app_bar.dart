import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.leading,
      required this.actions})
      : preferredSize = const Size.fromHeight(56.0);

  final String title;
  final Widget leading;
  final List<Widget>? actions;

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(child: Text(title)),
        leading: leading,
        backgroundColor: const Color(0xFF1E2329),
        actions: actions);
  }
}
