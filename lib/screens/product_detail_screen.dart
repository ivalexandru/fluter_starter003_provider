import "package:flutter/material.dart";
import "../providers/products.dart";
import "package:provider/provider.dart";

class ProductDetailScreen extends StatelessWidget {
//retrieve arg from the routing 'action':
  static const routeName = "./product-detail";
  @override
  Widget build(BuildContext context) {
    //extract the id passed from product_item.dart
    final productId = ModalRoute.of(context).settings.arguments as String;
    //ai acces la metoda findById definita in /providers/products, pt ca mixins:

    // listen:false => build/ get data ONCE, and DO NOT UPDATE when things change
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
