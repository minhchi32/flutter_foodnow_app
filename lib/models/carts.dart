import 'products.dart';

class Carts {
  static List<Products> cart=[];
  void addProductToCart(Products product){
    cart.add(product);
  }

  List<Products> getCart(){
    return cart;
  }
}
