import 'package:flutter/material.dart';
import 'package:flutter_foodnow_app/detail/productpage.dart';
import 'package:flutter_foodnow_app/models/products.dart';
import 'package:flutter_foodnow_app/models/utilities.dart';

class CategoryDetail extends StatefulWidget {
  int id;
  CategoryDetail(this.id);
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return buildListView(Utilities().getProductFromCategory(widget.id));
  }

  ListView buildListView(List<Products> data) {
    // print(data.toString());

    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            color: Color(0xFFF5F5F5),
            padding: EdgeInsets.all(16),
            child: Row(children: [
              SizedBox(
                  width: 50, height: 50, child: Image.asset(data[index].image)),
              Expanded(child: Text(data[index].title)),
              Expanded(
                  child: Text(
                data[index].price.toString(),
                textAlign: TextAlign.end,
              )),
            ]),
          );
        });
  }
}
