import 'package:flutter/material.dart';
import 'package:task_ui3/helpers/constants.dart';


class HouseWidget extends StatelessWidget {
  String title;
  void Function()? on_tap;
  HouseWidget({super.key, required this.title, this.on_tap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: on_tap,

          child: Text(
            'ALL',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}