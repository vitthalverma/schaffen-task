import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';

class NotificationRow extends StatefulWidget {
  const NotificationRow({super.key});

  @override
  State<NotificationRow> createState() => _NotificationRowState();
}

class _NotificationRowState extends State<NotificationRow> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Mute Notificatons',
          style: TextStyle(
            fontSize: 16.6.sp,
            fontWeight: FontWeight.w600,
            color: kBlackColor,
          ),
        ),
        CupertinoSwitch(
          activeColor: appColor,
          value: _light,
          onChanged: (value) {
            setState(() {
              _light = value;
            });
          },
        ),
      ],
    );
  }
}
