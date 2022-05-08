import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/models/orders.dart';
import 'package:flutter_foodnow_app/models/products.dart';
import 'package:intl/intl.dart';

class NotificationDetail extends StatelessWidget {
  List<Orders> orders;
  NotificationDetail(this.orders);

  @override
  Widget build(BuildContext context) {
    print(orders.length.toString());
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return CartItemList(
                order: orders[index],
              );
            }),
      ),
    );
  }
}

class CartItemList extends StatelessWidget {
  Orders order;

  CartItemList({required this.order});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Color(0xFFF5F5F5),
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 80,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: SizedBox(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          DateFormat('dd/MM/yyyy hh:mm:ss')
                              .format(order.dateTime ?? DateTime.now())
                              .toString(),
                          style: TextStyle(fontSize: 20)),
                      Expanded(
                          child: Text("Status: " + order.status,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20)))
                    ],
                  )),
            ),
            Text(order.price.toString(), style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
