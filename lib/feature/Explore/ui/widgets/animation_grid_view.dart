import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/constants/go_router.dart';
import 'package:supermarket/feature/Shop/ui/widgets/card_item.dart';

class AnimationGridView extends StatelessWidget {
  const AnimationGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 4.h,
            crossAxisSpacing: 2.w,
            childAspectRatio: .65,
            crossAxisCount: 2),
        itemBuilder: (context, index) => AnimationConfiguration.staggeredGrid(
          position: index,
          columnCount: 2,
          duration: const Duration(milliseconds: 500),
          child: ScaleAnimation(
            duration: const Duration(milliseconds: 900),
            curve: Curves.fastLinearToSlowEaseIn,
            scale: 1.5,
            child: FadeInAnimation(
              child: CardItem(
                onPressed: () {
                  GoRouter.of(context).push(Routers.productDetails);
                },
                image: Assets.imagesPepper,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
