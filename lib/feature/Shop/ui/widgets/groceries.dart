import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/feature/Shop/ui/widgets/card_grocery.dart';
import 'package:supermarket/feature/Shop/ui/widgets/see_all.dart';

class Groceries extends StatelessWidget {
  const Groceries({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowSeeAll(
          text1: 'Groceries',
          text2: 'See all',
          onPressed: () {},
        ),
        SizedBox(
          height: 80.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const CardGrocery(),
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              itemCount: 15),
        ),
      ],
    );
  }
}
