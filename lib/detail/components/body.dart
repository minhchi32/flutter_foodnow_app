import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/detail/components/addtocart.dart';
import 'package:flutter_foodnow_app/models/products.dart';

import '../../models/utilities.dart';
import '../../widgets/numeric_step_button.dart';

class Body extends StatelessWidget {
  Products product;
  int countOrder = 0;
  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    Utilities.addFavorite(product);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(product.image)),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Text("Description: ${product.description}"),
            flex: 1,
          ),
          Row(
            children: [
              Text("Price: ${product.price}"),
              NumericStepButton(
                maxValue: 20,
                onChanged: (value) {
                  countOrder = value;
                },
              ),
            ],
          ),
          AddProductToCart(
            product: product,
          )
        ],
      ),
    );
  }
}
