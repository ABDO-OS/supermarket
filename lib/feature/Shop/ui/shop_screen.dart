import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/widgets/text_from_field_search.dart';
import 'package:supermarket/feature/Shop/ui/widgets/best_selling.dart';
import 'package:supermarket/feature/Shop/ui/widgets/exclusive_offer.dart';
import 'package:supermarket/feature/Shop/ui/widgets/groceries.dart';
import 'package:supermarket/feature/Shop/ui/widgets/row_location.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SvgPicture.asset(
                  Assets.imagesCarrot,
                ),
              ),
              const RowLocation(),
              SizedBox(
                height: 15.h,
              ),
              const TextFromFieldSearch(),
              SizedBox(
                height: 20.h,
              ),
              const Groceries(),
              SizedBox(
                height: 15.h,
              ),
              const ExclusiveOffer(),
              SizedBox(
                height: 15.h,
              ),
              const BestSelling(),
            ],
          ),
        ),
      )),
    );
  }
}

