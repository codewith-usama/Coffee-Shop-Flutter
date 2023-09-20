import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale

  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Black Coffee',
      price: "4.10",
      imagePath: "lib/images/black-coffee.png",
    ),

    // latte
    Coffee(
      name: 'Latte',
      price: "4.20",
      imagePath: "lib/images/latte.png",
    ),

    // espresso
    Coffee(
      name: 'Expresso',
      price: "3.50",
      imagePath: "lib/images/expresso.png",
    ),

    // iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "4.40",
      imagePath: "lib/images/ice-coffee.png",
    ),
  ];

  // user cart
  final List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item fro cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
