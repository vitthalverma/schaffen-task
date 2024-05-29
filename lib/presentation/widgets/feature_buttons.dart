import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/presentation/widgets/feature_row.dart';

class FeatureButtons extends StatelessWidget {
  const FeatureButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: const Column(
        children: [
          FeatureRow(
            leading: """
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M21 6.73001C20.98 6.73001 20.95 6.73001 20.92 6.73001C15.63 6.20001 10.35 6.00001 5.12004 6.53001L3.08004 6.73001C2.66004 6.77001 2.29004 6.47001 2.25004 6.05001C2.21004 5.63001 2.51004 5.27001 2.92004 5.23001L4.96004 5.03001C10.28 4.49001 15.67 4.70001 21.07 5.23001C21.48 5.27001 21.78 5.64001 21.74 6.05001C21.71 6.44001 21.38 6.73001 21 6.73001Z" fill="black"/>
<path d="M8.50001 5.72C8.46001 5.72 8.42001 5.72 8.37001 5.71C7.97001 5.64 7.69001 5.25 7.76001 4.85L7.98001 3.54C8.14001 2.58 8.36001 1.25 10.69 1.25H13.31C15.65 1.25 15.87 2.63 16.02 3.55L16.24 4.85C16.31 5.26 16.03 5.65 15.63 5.71C15.22 5.78 14.83 5.5 14.77 5.1L14.55 3.8C14.41 2.93 14.38 2.76 13.32 2.76H10.7C9.64001 2.76 9.62001 2.9 9.47001 3.79L9.24001 5.09C9.18001 5.46 8.86001 5.72 8.50001 5.72Z" fill="black"/>
<path d="M15.21 22.75H8.79002C5.30002 22.75 5.16002 20.82 5.05002 19.26L4.40002 9.19C4.37002 8.78 4.69002 8.42 5.10002 8.39C5.52002 8.37 5.87002 8.68 5.90002 9.09L6.55002 19.16C6.66002 20.68 6.70002 21.25 8.79002 21.25H15.21C17.31 21.25 17.35 20.68 17.45 19.16L18.1 9.09C18.13 8.68 18.49 8.37 18.9 8.39C19.31 8.42 19.63 8.77 19.6 9.19L18.95 19.26C18.84 20.82 18.7 22.75 15.21 22.75Z" fill="black"/>
<path d="M13.66 17.25H10.33C9.91996 17.25 9.57996 16.91 9.57996 16.5C9.57996 16.09 9.91996 15.75 10.33 15.75H13.66C14.07 15.75 14.41 16.09 14.41 16.5C14.41 16.91 14.07 17.25 13.66 17.25Z" fill="black"/>
<path d="M14.5 13.25H9.5C9.09 13.25 8.75 12.91 8.75 12.5C8.75 12.09 9.09 11.75 9.5 11.75H14.5C14.91 11.75 15.25 12.09 15.25 12.5C15.25 12.91 14.91 13.25 14.5 13.25Z" fill="black"/>
</svg>

 """,
            title: 'Clear Chat',
            isRed: false,
          ),
          FeatureRow(
            leading: """
<svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4 8V5C4 3.93913 4.42143 2.92172 5.17157 2.17157C5.92172 1.42143 6.93913 1 8 1C9.06087 1 10.0783 1.42143 10.8284 2.17157C11.5786 2.92172 12 3.93913 12 5V8" stroke="black" stroke-width="1.5" stroke-linecap="round"/>
<path d="M1 8H15V17C15 17.5304 14.7893 18.0391 14.4142 18.4142C14.0391 18.7893 13.5304 19 13 19H3C2.46957 19 1.96086 18.7893 1.58579 18.4142C1.21071 18.0391 1 17.5304 1 17V8Z" stroke="black" stroke-width="1.5" stroke-linejoin="round"/>
<path d="M8 14H8.01V14.01H8V14Z" stroke="black" stroke-width="2.25" stroke-linejoin="round"/>
</svg>


 """,
            title: 'Encryption',
            isRed: false,
          ),
          FeatureRow(
            leading: """
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.90002 7.56001C9.21002 3.96001 11.06 2.49001 15.11 2.49001H15.24C19.71 2.49001 21.5 4.28001 21.5 8.75001V15.27C21.5 19.74 19.71 21.53 15.24 21.53H15.11C11.09 21.53 9.24002 20.08 8.91002 16.54" stroke="#FF3040" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 12H3.62" stroke="#FF3040" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.85 8.64999L2.5 12L5.85 15.35" stroke="#FF3040" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>

 """,
            title: 'Exit Community',
            isRed: true,
          ),
          FeatureRow(
            leading: """
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M16.52 5.64999L13.42 3.24999C13.02 2.84999 12.12 2.64999 11.52 2.64999H7.71998C6.51998 2.64999 5.21998 3.54999 4.91998 4.74999L2.51998 12.05C2.01998 13.45 2.91998 14.65 4.41998 14.65H8.41998C9.01998 14.65 9.51998 15.15 9.41998 15.85L8.91998 19.05C8.71998 19.95 9.31998 20.95 10.22 21.25C11.02 21.55 12.02 21.15 12.42 20.55L16.52 14.45" stroke="#FF3040" stroke-width="1.5" stroke-miterlimit="10"/>
<path d="M21.62 5.65V15.45C21.62 16.85 21.02 17.35 19.62 17.35H18.62C17.22 17.35 16.62 16.85 16.62 15.45V5.65C16.62 4.25 17.22 3.75 18.62 3.75H19.62C21.02 3.75 21.62 4.25 21.62 5.65Z" stroke="#FF3040" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


 """,
            title: 'Report',
            isRed: true,
          ),
        ],
      ),
    );
  }
}
