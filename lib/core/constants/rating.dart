import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';

class ReviewRatingBar extends StatelessWidget {
  const ReviewRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return (RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 2.0.h),
      itemBuilder: (context, _) =>
          Icon(Icons.star, color: ColorApp.colorReview),
      onRatingUpdate: (rating) {
        log('$rating');
      },
    ));
  }
}
