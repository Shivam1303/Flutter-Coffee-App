import 'package:flutter/material.dart';
import 'package:mycoffee/components/coffee_tile.dart';
import 'package:mycoffee/models/coffee.dart';
import 'package:mycoffee/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              //heading
              Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              //list of items
              Expanded(
                  child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        //get individual coffee
                        Coffee eachCoffee = value.userCart[index];

                        //coffe tile
                        return CoffeeTile(
                            coffee: eachCoffee,
                            onPressed: (() => removeFromCart(eachCoffee)),
                            icon: Icon(Icons.remove));
                      }))
            ],
          ),
        ),
      ),
    );
  }

  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }
}
