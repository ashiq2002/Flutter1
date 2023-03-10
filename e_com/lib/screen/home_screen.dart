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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("E-Com"),
      ),
      body: ListView.builder(
        itemCount: ProductData.products.length,
          itemBuilder: (context, index)=> Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 115,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),

              child: Row(
                children: [
                  Container(
                    height: double.maxFinite,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                          ProductData.products[index].images,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ProductData.products[index].title, style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),),
                          const SizedBox(height: 5,),
                          Text(ProductData.products[index].description, style: const TextStyle(
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: ButtonBar(
                              alignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$${ProductData.products[index].price}'),
                                ElevatedButton(
                                    onPressed: (){},
                                    child: const Text('Buy')
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),
          )
      ),
      drawer: const MyDrawer(),
    );
  }
}
