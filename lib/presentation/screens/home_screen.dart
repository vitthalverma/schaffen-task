import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';
import 'package:schaffen/presentation/widgets/bottom_sheet.dart';
import 'package:schaffen/presentation/widgets/feature_buttons.dart';
import 'package:schaffen/presentation/widgets/horizontal_list.dart';
import 'package:schaffen/presentation/widgets/notification_row.dart';
import 'package:schaffen/presentation/widgets/outdoor_tabs.dart';
import 'package:schaffen/presentation/widgets/share_button.dart';
import 'package:schaffen/presentation/widgets/user_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  double _opacity = 0.0;
  bool condition = false;
  bool searching = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        // Update opacity based on scroll offset
        _opacity =
            (_scrollController.hasClients && _scrollController.offset > 100)
                ? 1.0
                : 0.0;
        condition =
            _scrollController.hasClients && _scrollController.offset > 100;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              floating: false,
              pinned: true,
              expandedHeight: 33.h,
              toolbarHeight: 10.h,
              leading: const Icon(
                Icons.arrow_back,
                color: whilteColor,
              ),
              flexibleSpace: Column(
                children: [
                  Expanded(
                    child: FlexibleSpaceBar(
                      background: Image.network(
                        'https://s3-alpha-sig.figma.com/img/f73a/5646/52140c118215c6f6bf7750b59fe33721?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PiiyIIxafJageoAFWZx6hMXm26xbSVIf~WHkyu5~VudbxY2xSaj06OgoPzTs5JcDJch9I669SM-7j3w-dtII9cInXNprXtRI6X39hzPmp~KJFL8Q7-oBfd2UZact8bgrSgRwfRtWtXIiqHV~sOEKtDPD8~mVde0Tx8aAVcGsyeN~Ew6f3miLQHCENoBJTmxVUR19ZYA4GTQPZCTHDs6URcJ2GorFft5wxXpD1in8soMAYWtcptlXs2YrK8FX0K1ft5vgxvWyvf1ImRjJSsMP0p-nI04ldotWa~-749s2uV~pXLEmHko4U9-DzA9cQM38d3nwKvUk-pTruUUvryF0RA__',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 9.h,
                    color: appBarColor,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 3.w,
                          right: 5.w,
                          bottom: 3.w,
                          left: condition ? 14.w : 5.w),
                      child: Row(
                        children: [
                          condition
                              ? AnimatedOpacity(
                                  opacity: _opacity,
                                  duration: const Duration(milliseconds: 500),
                                  child: CircleAvatar(
                                    radius: 6.5.w,
                                    backgroundImage: const NetworkImage(
                                      'https://s3-alpha-sig.figma.com/img/f73a/5646/52140c118215c6f6bf7750b59fe33721?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PiiyIIxafJageoAFWZx6hMXm26xbSVIf~WHkyu5~VudbxY2xSaj06OgoPzTs5JcDJch9I669SM-7j3w-dtII9cInXNprXtRI6X39hzPmp~KJFL8Q7-oBfd2UZact8bgrSgRwfRtWtXIiqHV~sOEKtDPD8~mVde0Tx8aAVcGsyeN~Ew6f3miLQHCENoBJTmxVUR19ZYA4GTQPZCTHDs6URcJ2GorFft5wxXpD1in8soMAYWtcptlXs2YrK8FX0K1ft5vgxvWyvf1ImRjJSsMP0p-nI04ldotWa~-749s2uV~pXLEmHko4U9-DzA9cQM38d3nwKvUk-pTruUUvryF0RA__',
                                    ),
                                  ),
                                )
                              : Container(),
                          SizedBox(width: 2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'The Weeknd',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: whilteColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Community. +11k Members',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: whilteColor,
                                ),
                              ),
                            ],
                          ),
                          Flexible(child: Container()),
                          condition
                              ? IconButton(
                                  onPressed: () {
                                    DisplayBottomSheet()
                                        .diaplayBottomSheet(context);
                                  },
                                  icon: Icon(
                                    Icons.more_vert_rounded,
                                    size: 20.sp,
                                    color: whilteColor,
                                  ),
                                )
                              : const ShareButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(7.w),
                child: searching
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 4.h,
                                width: 65.w,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsetsDirectional.symmetric(
                                              vertical: 2.w, horizontal: 5.w),
                                      filled: true,
                                      fillColor: const Color(0xFFE9E9EB),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.w),
                                        borderSide: BorderSide.none,
                                      ),
                                      hintText: 'Search Member',
                                      hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.grey.shade700,
                                      )),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    searching = !searching;
                                  });
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:
                                List.generate(10, (index) => const UserTile()),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...',
                                  style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 16.6.sp,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Read more',
                                  style: TextStyle(
                                    color: appColor,
                                    fontSize: 16.6.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h),
                          const OutdoorTabs(),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Media, docs and links',
                                style: TextStyle(
                                  fontSize: 16.6.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 18.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          const HorizontalList(),
                          SizedBox(height: 2.h),
                          const NotificationRow(),
                          SizedBox(height: 1.h),
                          const FeatureButtons(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Members',
                                style: TextStyle(
                                  fontSize: 16.6.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    searching = !searching;
                                  });
                                },
                                icon: Icon(
                                  Icons.search_rounded,
                                  size: 20.sp,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:
                                List.generate(10, (index) => const UserTile()),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
