import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/feature/Shop/ui/widgets/card_item.dart';
import 'package:supermarket/feature/Shop/ui/widgets/see_all.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowSeeAll(
          text1: 'Best Selling',
          text2: 'See all',
          onPressed: () {},
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          height: 240.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                      height: 240.h,
                    width: 195.w,
                child: const CardItem(
                      image: Assets.imagesBanana,
                    ),
              ),
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              itemCount: 15),
        ),
      ],
    );
  }
}
