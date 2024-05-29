import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 13.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Container(
              height: 12.h,
              width: 12.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.w),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3.w),
                child: Image.asset(
                  'assets/images/appImg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
