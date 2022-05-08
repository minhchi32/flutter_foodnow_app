import '../cart/components/body.dart';

class Orders {
  DateTime? dateTime;
  String status;
  double price;
  List<CartItem> cart;
  Orders(this.cart, this.price, [DateTime? dateTime, this.status = "Delivery"])
      : this.dateTime = dateTime ?? DateTime.now();
  static List<Orders> orders = [];

  static void checkOutCart(Orders order) {
    orders.add(order);
  }

  List<Orders> getCarts() {
    return orders;
  }
}
