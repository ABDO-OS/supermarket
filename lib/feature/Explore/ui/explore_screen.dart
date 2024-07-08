import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/text_from_field_search.dart';
import 'package:supermarket/feature/Explore/ui/widgets/grid_view_category.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15.0.r),
        child: Column(
          children: [
            Text('Find Products', style: TextStylesApp.textStyleSemi19),
            SizedBox(height: 15.h),
            const TextFromFieldSearch(),
            SizedBox(
              height: 15.h,
            ),
            const Expanded(
              child: GridViewItem(),
            ),
          ],
        ),
      )),
    );
  }
}
