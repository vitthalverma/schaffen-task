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
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/f73a/5646/52140c118215c6f6bf7750b59fe33721?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PiiyIIxafJageoAFWZx6hMXm26xbSVIf~WHkyu5~VudbxY2xSaj06OgoPzTs5JcDJch9I669SM-7j3w-dtII9cInXNprXtRI6X39hzPmp~KJFL8Q7-oBfd2UZact8bgrSgRwfRtWtXIiqHV~sOEKtDPD8~mVde0Tx8aAVcGsyeN~Ew6f3miLQHCENoBJTmxVUR19ZYA4GTQPZCTHDs6URcJ2GorFft5wxXpD1in8soMAYWtcptlXs2YrK8FX0K1ft5vgxvWyvf1ImRjJSsMP0p-nI04ldotWa~-749s2uV~pXLEmHko4U9-DzA9cQM38d3nwKvUk-pTruUUvryF0RA__',
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
