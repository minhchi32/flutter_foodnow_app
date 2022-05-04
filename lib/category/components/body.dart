import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/category/components/category_detail.dart';

class Body extends StatelessWidget {
  int categoryId;
  Body(this.categoryId);
  @override
  Widget build(BuildContext context) {
    return CategoryDetail(categoryId);
  }
}
