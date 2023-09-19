import 'package:e_commerce_ui/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Campus',
        price: '1120',
        imagePath: 'assets/images/shoe1.png',
        description: 'Long lasting technology'),
    Shoe(
        name: 'Nike',
        price: '5120',
        imagePath: 'assets/images/shoe2.png',
        description: 'Just Do It'),
    Shoe(
        name: 'Adidas',
        price: '2350',
        imagePath: 'assets/images/shoe3.png',
        description: "Impossible is Nothing"),
    Shoe(
        name: 'Puma',
        price: '3299',
        imagePath: 'assets/images/shoe4.png',
        description: "Forever Faster"),
    Shoe(
        name: 'Reebok',
        price: '2899',
        imagePath: 'assets/images/shoe5.png',
        description: "Be More Human"),
    Shoe(
        name: 'Bata',
        price: '4799',
        imagePath: 'assets/images/shoe6.png',
        description: "Comfort Included"),
    Shoe(
        name: 'Vans',
        price: '7499',
        imagePath: 'assets/images/shoe7.png',
        description: "Off the Wall"),
    Shoe(
        name: 'Sketchers',
        price: '9699',
        imagePath: 'assets/images/shoe8.png',
        description: "Fearlessly Independent"),
  ];

// list of item in user cart

  List<Shoe> userCart = [];

// get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
