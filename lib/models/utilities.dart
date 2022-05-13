import 'dart:convert';

import 'products.dart';
import 'package:http/http.dart' as http;
import 'package:quiver/strings.dart';

class Utilities {
  String url = 'http://192.168.0.100:3000/api/food';

  static List<Products> data = [];
  Future<List<Products>> getProducts() async {
    var res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      var content = res.body;
      print(content.toString());
      var arr = json.decode(content)['food'] as List;

      return arr.map((e) => _fromJson(e)).toList();
    }
    return <Products>[];
  }

  Products _fromJson(Map<String, dynamic> item) {
    return new Products(
        id: item['id'],
        description: item['description'],
        title: item['title'],
        image: item['image'],
        price: double.parse(item['description']),
        categoryId: item['categoryId']);
  }

  static String? validateEmail(String? value) {
    if (value == null) return 'Please enter email';

    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    return !regExp.hasMatch(value) ? 'Enter valid email' : null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) return 'Please enter password';

    if (value.length < 8) return 'Password should be more than 8 characters';
    return null;
  }

  static String? conformPassword(String a, String b) {
    if (!equalsIgnoreCase(a, b)) return 'Conform password invalid';
    return null;
  }

  List<Products> getProductFromCategory(int id) {
    var data = Products.init();
    return data.where((p) => p.categoryId == id).toList();
  }

  static void addFavorite(Products product) {
    if (data.where((element) => element.id == product.id).toList().isNotEmpty)
      return;
    data.add(product);
  }

  List<Products> find(String name) {
    return Products.init().where((element) => element.title.toLowerCase().contains(name.toLowerCase())).toList();
  }
}
