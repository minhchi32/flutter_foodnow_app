import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/models/products.dart';

import '../../../detail/productpage.dart';

class FavoriteDetail extends StatelessWidget {
  List<Products> products;

  FavoriteDetail(this.products);
  @override
  Widget build(BuildContext context) {
    print(products.length.toString());
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductItemList(
                product: products[index],
              );
            }),
      ),
    );
  }
}

class ProductItemList extends StatelessWidget {
  Products product;

  ProductItemList({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductPage.routeName,
            arguments: ProductDetailsArguments(product: product));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: SizedBox(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title),
                        Expanded(
                            child: Text(
                          product.description,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
