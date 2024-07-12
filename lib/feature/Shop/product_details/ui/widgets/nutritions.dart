import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/custom_expansion_tile.dart';

class ProductNutritionWidget extends StatelessWidget {
  const ProductNutritionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerExpansionTile(),
        ExpansionTile(
          shape: const RoundedRectangleBorder(
            side: BorderSide(style: BorderStyle.none),
          ),
          iconColor: ColorApp.primary,
          expandedAlignment: Alignment.centerLeft,
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.all(4.r),
          title: Text('Nutrition',
              style: TextStylesApp.textStyleRegular15.copyWith(
                color: ColorApp.primary,
              )),
          children: [
            Container(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
        //        Text(
        //   'hi',
        //   style: TextStylesApp.textStyleRegular13.copyWith(
        //     color: ColorApp.secondary,
        //   ),
        // ),
            ),
            Lines(
              line: [
                '100 kg',
                '50 cal',
                '20 m',
              ],
            ),
          ],
        ),
        const DividerExpansionTile(),
      ],
    );
  }
}

class Lines extends StatelessWidget {
  final List<String> line;

  const Lines({super.key, required this.line});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildText(),
    );
  }

  List<Widget> buildText() {
    return line.map((line) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          line,
          style: TextStylesApp.textStyleRegular13.copyWith(
            color: ColorApp.secondary,
          ),
        ),
      );
    }).toList();
  }
}
