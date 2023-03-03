import 'package:e_com/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){},
          // leading: Image.network(product.images, height: 45, width:45,),
        title: Text(product.title, style: const TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text(product.description),
        trailing: Text(
          "\$${product.price.toString()}",
          textScaleFactor: 1.5,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange),
        ),
      ),
    );
  }
}
