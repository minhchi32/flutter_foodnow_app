import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/cart/components/checkoutcart.dart';
import 'package:flutter_foodnow_app/models/carts.dart';
import 'package:flutter_foodnow_app/models/products.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CartItem> cartdetails = Carts().getCart();
  double sum = 0.0;

  @override
  void initState() {
    super.initState();
    cartdetails.forEach((element) {
      sum = sum + element.product.price * element.countOrder;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: cartdetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: CartItem(
                          product: cartdetails[index].product,
                          countOrder: cartdetails[index].countOrder,
                        ),
                        onTap: () {
                          setState(() {
                            cartdetails.removeAt(index);
                            sum = 0.0;
                            cartdetails.forEach((element) {
                              sum = sum +
                                  element.product.price * element.countOrder;
                            });
                          });
                        },
                      ),
                      Divider()
                    ],
                  );
                }),
          ),
          CheckOutCart(
            sum: sum,
          )
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  Products product;
  int countOrder;
  CartItem({required this.product, required this.countOrder});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      padding: EdgeInsets.all(16),
      child: Row(children: [
        SizedBox(width: 100, height: 100, child: Image.asset(product.image)),
        Expanded(child: Text(product.title)),
        Expanded(child: Text("x${countOrder.toString()}")),
        Expanded(child: Text(product.price.toString())),
        Icon(Icons.delete_outlined)
      ]),
    );
  }
}
