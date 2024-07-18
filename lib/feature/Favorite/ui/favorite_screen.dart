import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supermarket/core/constants/smalldivider.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_app.dart';
import 'package:supermarket/feature/Favorite/ui/widgets/button.dart';
import 'package:supermarket/feature/Favorite/ui/widgets/image_favourite.dart';
import 'package:supermarket/feature/Favorite/ui/widgets/product_details_favourite.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Favourite',
          style: TextStylesApp.textStyleSemi19.copyWith(color: Colors.black),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(9, (index) {
              return Column(
                children: [
                  buildFavoriteItem(),
                  SmallDivider(),
                ],
              );
            }),
          ],
        ),
      ),
      floatingActionButton: button(),
    );
  }

  Widget buildFavoriteItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          imagefavourite(),
          Expanded(child: detailsfavourite()),
        ],
      ),
    );
  }
}
