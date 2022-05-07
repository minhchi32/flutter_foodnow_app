import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/models/carts.dart';
import 'package:flutter_foodnow_app/models/products.dart';
import 'package:flutter_foodnow_app/widgets/widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddProductToCart extends StatefulWidget {
  Products product;
  int countOrder;

  AddProductToCart({required this.product, required this.countOrder});

  @override
  _AddProductToCartState createState() => _AddProductToCartState();
}

class _AddProductToCartState extends State<AddProductToCart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Carts cart = Carts();
          cart.addProductToCart(widget.product, widget.countOrder);
          //print(cart.getCart().length.toString());
          toastNotify("Add to cart");
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.green)))),
        child: Text(
          "Add to cart",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
