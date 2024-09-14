import 'package:book/constants/text_styles.dart';
import 'package:book/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:book/features/home/presentation/view/widgets/book_list_view.dart';
import 'package:book/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              const HomeAppBar(),
              SizedBox(height: 47.h),
              const BookListView(),
              SizedBox(height: 51.h),
              const Text(
                "Best Seller",
                style: Styles.textStyle18,
              ),
              SizedBox(height: 20.h),
              const BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
