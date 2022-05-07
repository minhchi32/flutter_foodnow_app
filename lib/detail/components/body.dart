import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/detail/components/addtocart.dart';
import 'package:flutter_foodnow_app/models/products.dart';

import '../../models/utilities.dart';
import '../../widgets/numeric_step_button.dart';

class Body extends StatefulWidget {
  Products product;

  Body({required this.product});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int countOrder = 1;

  @override
  Widget build(BuildContext context) {
    Utilities.addFavorite(widget.product);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(widget.product.image)),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Text("Description: ${widget.product.description}"),
            flex: 1,
          ),
          Row(
            children: [
              Text("Price: ${widget.product.price}"),
              NumericStepButton(
                onChanged: (value) => setState(() => countOrder = value),
              ),
            ],
          ),
          AddProductToCart(
            product: widget.product,
            countOrder: countOrder,
          )
        ],
      ),
    );
  }
}
