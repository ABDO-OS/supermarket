import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/constants/go_router.dart';
import 'package:supermarket/core/widgets/custom_appbar.dart';
import 'package:supermarket/feature/Explore/ui/widgets/animation_grid_view.dart';
import 'package:supermarket/feature/Shop/ui/widgets/card_item.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        icon: Icons.tune,
        backgroundColor: Colors.white,
        title: 'Beverages',
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: const Column(
          children: [
            Expanded(
              child: AnimationGridView(),
            ),
          ],
        ),
      ),
    );
  }
}

