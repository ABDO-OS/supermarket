import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/smalldivider.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/account_items.dart';
import 'package:supermarket/core/widgets/button_log_out.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/custom_expansion_tile.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  AccountScreenState createState() => AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {
  String name = "User";
  bool isEditing = false;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = name;
  }

  void toggleEdit() {
    setState(() {
      if (isEditing) {
        name = controller.text;
      }
      isEditing = !isEditing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20), 
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: isEditing
                                    ? TextField(
                                        controller: controller,
                                        decoration: InputDecoration(
                                          hintText: 'enteer your name',
                                        ),
                                      )
                                    : Text(
                                        name,
                                        style: TextStylesApp.textStyleSemi17.copyWith(
                                          color: ColorApp.primary,
                                        ),
                                      ),
                              ),
                              IconButton(
                                icon: Icon(isEditing ? Icons.check : Icons.edit,color:ColorApp.colorButton),
                                onPressed: toggleEdit,
                              ),
                            ],
                          ),
                          Text(
                            'abdalrhmanosama135@gmail.com',
                            style: TextStylesApp.textStyleRegular13.copyWith(
                              color: ColorApp.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              const SmallDivider(),
              Item(
                icon: Icons.shopping_bag_outlined,
                text: 'Orders',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.person_outline,
                text: 'My Details',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.location_on_outlined,
                text: 'Delivery Address',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.payment_outlined,
                text: 'Payment Methods',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.card_giftcard_outlined,
                text: 'Promo Cord',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.notifications_outlined,
                text: 'Notifications',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.help_outline,
                text: 'Help',
                onTap: () {},
              ),
              const SmallDivider(),
              Item(
                icon: Icons.info_outline,
                text: 'About',
                onTap: () {},
              ),
              const SmallDivider(),
              SizedBox(height: 30),
              ButtonLogOut(
                text: 'Log Out',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
