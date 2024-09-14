import 'package:book/constants/text_styles.dart';
import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) => Column(
        children: [
          Row(
            children: [
              Image.asset(Assets.test, height: 105.h, width: 70.h),
            ],
          ),
          Column(
            children: [
              Text(
                "The Jungle Book",
                style: Styles.textStyle20,
              ),
              Text("Rudyard Kipling", style: Styles.textStyle14),
            ],
          )
        ],
      ),
    );
  }
}
