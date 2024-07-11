import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/account_items.dart';
import 'package:supermarket/core/widgets/button_log_out.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                children: [
                  ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/apple.png'),
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20), // Space between image and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Abdo Osama',
                        style: TextStylesApp.textStyleRegular15.copyWith(
                          color: ColorApp.primary,
                        ),
                      ),
                      Text(
                        'abdalrhmanosama135@gmail.com',
                        style: TextStylesApp.textStyleRegular13.copyWith(
                          color: ColorApp.secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40), 
            Item(
              icon: Icons.shopping_bag_outlined,
              text: 'Orders',
              onTap: () {},
            ),
            Item(
              icon: Icons.person_outline,
              text: 'My Details',
              onTap: () {},
            ),
            Item(
              icon: Icons.location_on_outlined,
              text: 'Delivery Address',
              onTap: () {},
            ),
            Item(
              icon: Icons.payment_outlined,
              text: 'Payment Methods',
              onTap: () {},
            ),
            Item(
              icon: Icons.card_giftcard_outlined,
              text: 'Promo Cord',
              onTap: () {},
            ),
            Item(
              icon: Icons.notifications_outlined,
              text: 'Notifications',
              onTap: () {},
            ),
            Item(
              icon: Icons.help_outline,
              text: 'Help',
              onTap: () {},
            ),
            Item(
              icon: Icons.info_outline,
              text: 'About',
              onTap: () {},
            ),
            
            // Spacer(),
                        SizedBox(height: 60), 

            ButtonLogOut(
              text: 'Log Out',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
