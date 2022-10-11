import 'package:flutter/material.dart';
import 'package:testapp/utils/constants/box_shadow.dart';

class SearchInputField extends StatelessWidget {
  const SearchInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: const Color(0xff1E2329),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: kSearchInputFieldBoxShadow,
      ),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Color(0xff8C8F92),
            size: 30,
          ),
          label: Text(
            'Search Location',
            style: TextStyle(
              color: Color(0xff8C8F92),
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
