import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/rating.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/custom_expansion_tile.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Row(
      children: [
        const DividerExpansionTile(),
       Text('Review',
                style: TextStylesApp.textStyleRegular15.copyWith(
                  color: ColorApp.primary,
                )),
                SizedBox(width:60),
                ReviewRatingBar(),
                // const DividerExpansionTile(),
                //                 const DividerExpansionTile(),

        // ExpansionTile(
        //     shape: const RoundedRectangleBorder(
        //       side: BorderSide(style: BorderStyle.none),
        //     ),
        //     iconColor: ColorApp.primary,
        //     expandedAlignment: Alignment.centerLeft,
        //     tilePadding: EdgeInsets.zero,
        //     childrenPadding: EdgeInsets.all(4.r),
        //     title: Text('Review',
        //         style: TextStylesApp.textStyleRegular15.copyWith(
        //           color: ColorApp.primary,
        //         )),
        //     children: const [
        //       ReviewRatingBar(),
        //     ]
        //     ),
        
      ],
    )
    );
  }
}
