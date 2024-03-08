import 'package:flutter/material.dart';
import 'package:shopping_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Dunks', 
      price: '230', 
      description: 'When you wanna look cool', 
      imagePath: 'lib/images/dunks.png'),
    Shoe(
      name: 'In Season', 
      price: '200', 
      description: 'Get to Training and Get It!', 
      imagePath: 'lib/images/in-season.png'
    ),
    Shoe(
      name: 'Vomero-17', 
      price: '180', 
      description: 'Ready for anything and in Style', 
      imagePath: 'lib/images/vomero-17.jpeg'
    ),
    Shoe(
      name: 'Air Force 1', 
      price: '200', 
      description: 'Best everyday shoe', 
      imagePath: 'lib/images/airForce1.png'
    ),
  ];

  List<Shoe> userCart = [];



  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}