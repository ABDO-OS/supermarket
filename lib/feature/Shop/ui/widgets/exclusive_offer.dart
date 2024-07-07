import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/constants/go_router.dart';
import 'package:supermarket/feature/Shop/ui/widgets/card_item.dart';
import 'package:supermarket/feature/Shop/ui/widgets/see_all.dart';

class ExclusiveOffer extends StatelessWidget {
  const ExclusiveOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowSeeAll(
          text1: 'Exclusive Offer',
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
              itemBuilder: (context, index) => CardItem(
                    onPressed: () {
                      GoRouter.of(context).push(Routers.productDetails);
                    },
                    image: Assets.imagesPepper,
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 5.w),
              itemCount: 15),
        ),
      ],
    );
  }
}
