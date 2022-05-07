import '../cart/components/body.dart';
import 'products.dart';

class Carts {
  static List<CartItem> cart = [];
  void addProductToCart(Products product, int countOrder) {
    for (var item in cart) {
      if (item.product.id == product.id) {
        item.countOrder += countOrder;
        return;
      }
    }
    CartItem newOrder = CartItem(product: product, countOrder: countOrder);
    cart.add(newOrder);
  }

  List<CartItem> getCart() {
    return cart;
  }
}
