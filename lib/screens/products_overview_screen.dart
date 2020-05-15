import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //use this as a screen => Scaffold (because u need appbar..)
    return Scaffold(
      appBar: AppBar(
        title: Text("Magazinul Meu"),
      ),
      body: ProductsGrid(),
    );
  }
}
