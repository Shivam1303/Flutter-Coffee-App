import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee menu
  final List<Coffee> _shop = [
    //cold coffee
    Coffee(
      name: 'Cold Coffee',
      price: '100',
      imagePath: 'images/cold_coffee.png',
    ),

    Coffee(
      name: 'Espresso',
      price: '80',
      imagePath: 'images/espresso.png',
    ),

    Coffee(
      name: 'Hot Coffee',
      price: '60',
      imagePath: 'images/hot_coffee.png',
    ),

    Coffee(
      name: 'Latte',
      price: '150',
      imagePath: 'images/latte.png',
    )
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffe list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
