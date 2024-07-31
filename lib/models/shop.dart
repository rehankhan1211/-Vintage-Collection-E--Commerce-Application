import 'package:e_commerce/models/product.dart';
import 'package:flutter/foundation.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    //product 1
    Product(
        name: " Rolex GMT Master II ",
        price: 999.54,
        description: "The Rolex Submariner is a renowned professional diver's watch, celebrated for its enduring design and functionality. Crafted primarily from stainless steel. ",
      imagePath: "assets/watch.png",
    ),
    //product 2
    Product(
      name: "Levis Denim Jacket",
      price: 455.78,
      description: "The Levi's denim jacket is a classic and iconic piece of outerwear that has stood the test of time. Crafted from high-quality denim.",
      imagePath: 'assets/jacket.png',
    ),
    //product 3
    Product(
      name: "Nike Shoes",
      price: 1899.97,
      description: "Nike shoes are renowned for their innovation, performance, and style, making them a global leader in athletic footwear.",
      imagePath: 'assets/shoes.png',
    ),
    //product 4
    Product(
      name: "Gucci Glasses",
      price: 89.98,
      description: "Gucci glasses, a part of the luxury Italian fashion house's eyewear collection, are synonymous with sophistication, style, and quality craftsmanship. ",
      imagePath: 'assets/glasses.png',
    ),
  ];

  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;


  // add item to cart
  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }
  //remove cart from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}