import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/feature/Explore/ui/widgets/card_category_search.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5.0.w,
          mainAxisSpacing: 3.0.h,
          crossAxisCount: 2),
      itemBuilder: (context, index) => const CardCategorySearch(),
    );
  }
}

 