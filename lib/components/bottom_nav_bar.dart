import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
   BottomNavBar({super.key, required this.onTabChange});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey,
      tabBackgroundColor: Colors.white24,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      onTabChange:(value) => widget.onTabChange!(value),
      tabs: [
        GButton(icon: Icons.home, text: 'Shop'),
        GButton(
          icon: Icons.shopping_cart,
          text: 'Cart',
        )
      ],
    );
  }
}
