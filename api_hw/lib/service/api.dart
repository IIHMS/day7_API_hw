import 'dart:convert';

import 'package:api_hw/models/product.dart';
import 'package:http/http.dart' as http;

class Api {
  String link = "https://dummyjson.com/products";

 Future<List<Product>> getData() async{
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var result = jsonDecode(response.body);

    List<Product> productList = [];

    for (var item in result["data"]) {
      Product p1 = Product.fromJson(item);
      productList.add(p1);
    }

    return productList;
  }
}