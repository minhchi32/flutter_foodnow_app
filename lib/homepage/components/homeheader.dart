import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/cart/cartpage.dart';
import 'package:flutter_foodnow_app/widgets/widget.dart';

import '../../models/carts.dart';
import '../../search/searchpage.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onTap: () => Navigator.pushNamed(context, SearchPage.routeName),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(5),
                filled: true,
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (Carts().getCart().isEmpty) {
              toastNotify("Cart is empty");
              return;
            }
            Navigator.pushNamed(context, CartPage.routeName);
          },
          child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black45,
              )),
        )
      ],
    );
  }
}
