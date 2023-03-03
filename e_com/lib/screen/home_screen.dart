import 'dart:convert';

import 'package:e_com/model/product_model.dart';
import 'package:e_com/widgets/my_drawer.dart';
import 'package:e_com/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    Future.delayed(const Duration(seconds: 5));
    final json = await rootBundle.loadString('assets/files/product_data.json');
    final data = jsonDecode(json);
    var products = data['products'];
    ProductData.products = List.from(products)
        .map<Product>((product) => Product.fromJson(product))
        .toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Com"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: ProductData.products.length,
          itemBuilder: (context, index) => (ProductData.products != null && ProductData.products.isNotEmpty)?
          ProductItem(product: ProductData.products[index])
          :const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
