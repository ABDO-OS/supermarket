import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/feature/Account/ui/account_screen.dart';
import 'package:supermarket/feature/Cart/ui/cart_screen.dart';
import 'package:supermarket/feature/Explore/ui/explore_screen.dart';
import 'package:supermarket/feature/Favorite/ui/favorite_screen.dart';
import 'package:supermarket/feature/Shop/ui/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        backgroundColor: Colors.white,
        context,
        screens: screens,
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style6,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
      ),
    );
  }

  List<Widget> screens = [
    const ShopScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const AccountScreen()
  ];
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      buildItemNavBar(title: 'Shop', icon: Icons.storefront_outlined),
      buildItemNavBar(
        title: 'Explore',
        icon: (Icons.manage_search_outlined),
      ),
      buildItemNavBar(title: 'Cart', icon: Icons.shopping_cart_outlined),
      buildItemNavBar(title: 'Favorite', icon: Icons.favorite_border_outlined),
      buildItemNavBar(title: 'Account', icon: Icons.person_3_outlined),
    ];
  }

  /// Builds a [PersistentBottomNavBarItem] with the specified [icon], [title], and [image].
  /// Returns a [PersistentBottomNavBarItem] with the specified properties.
  PersistentBottomNavBarItem buildItemNavBar(
      {required IconData icon, required String? title, String? image}) {
    return PersistentBottomNavBarItem(
        icon: Icon(icon),
        title: (title),
        textStyle: TextStylesApp.textStyleSemi10,
        activeColorPrimary: ColorApp.colorButton,
        inactiveColorPrimary: ColorApp.primary);
  }
}
