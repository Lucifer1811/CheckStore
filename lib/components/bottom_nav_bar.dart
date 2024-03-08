// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyBottomNavBar extends StatelessWidget {
  
  void Function(int)? onTabChange;
  
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder:Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 30,
        gap: 10,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: 'Shop'
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart'
          ),
        ],
      ),
    );
  }
}