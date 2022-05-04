import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_foodnow_app/detail/productpage.dart';
import 'package:flutter_foodnow_app/models/products.dart';
import 'package:flutter_foodnow_app/models/utilities.dart';

class ProductPopular extends StatelessWidget {
  final products = Products.init();

  @override
  Widget build(BuildContext context) {
    var productsAPI = Utilities().getProducts();
    double sizeImg = (MediaQuery.of(context).size.width) / 3;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Popular Products ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              )),
              Text(
                'See more',
                style: TextStyle(fontSize: 16, color: Colors.lightGreen),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: products[index],
                      size: sizeImg,
                    );
                  })),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  Products product;
  double size;
  ProductItem({required this.product, required this.size});

  @override
  Widget build(BuildContext context) {
    if (product.image != null) {}
    return GestureDetector(
      onTap: () {
        //print(product.id.toString());
        // Utilities.addFavorite(product);
        Navigator.pushNamed(context, ProductPage.routeName,
            arguments: ProductDetailsArguments(product: product));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            product.image,
            fit: BoxFit.contain,
            height: size,
            width: size,
          ),
          Row(
            children: [
              Expanded(child: Text(product.title)),
              Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green),
                  child: Text(
                    product.price.toString(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
