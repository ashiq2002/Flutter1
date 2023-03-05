import 'package:e_com/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Text(product.title),
            Image.network(product.images, height: 100, width: 100,),
            Text(product.price.toString())
          ],
        )
      ),
    );
  }
}
