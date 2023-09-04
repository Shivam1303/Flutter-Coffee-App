import 'package:flutter/material.dart';
import 'package:mycoffee/constant.dart';
import 'package:mycoffee/components/bottom_nav_bar.dart';
import 'package:mycoffee/pages/cart_page.dart';
import 'package:mycoffee/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectindex],
    );
  }
}
