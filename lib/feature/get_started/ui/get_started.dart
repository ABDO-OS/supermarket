import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_app.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesStarted),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(25.0.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.imagesCarrot,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  'Welcome \nto our store',
                  textAlign: TextAlign.center,
                  style: TextStylesApp.textStyleRegular48,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStylesApp.textStyleRegular16
                      .copyWith(color: ColorApp.colorStarted),
                ),
                SizedBox(height: 40.h),
                ButtonApp(
                  text: 'Get Started',
                  onPressed: () {},
                ),
                SizedBox(height: 40.h),
              ],
            ),
          )),
    );
  }
}
