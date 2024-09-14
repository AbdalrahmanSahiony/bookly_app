import 'package:book/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingBestSeller extends StatelessWidget {
  const RatingBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("19.99 €", style: Styles.textStyle18),
        SizedBox(width: 38.w),
        Icon(Icons.star, color: Colors.yellowAccent),
        Text(
          "4.8",
          style: Styles.textStyle18,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
