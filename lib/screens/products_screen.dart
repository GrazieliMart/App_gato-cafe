import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produtos')),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          children: List.generate(6, (index) => ProductTile(name: 'Produto \${index+1}', price: 'R\$ ${2.5 + index}')),
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final String name;
  final String price;
  ProductTile({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          // add to cart or open detail
          Navigator.pushNamed(context, '/cart');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_cafe, size: 64),
            SizedBox(height: 8),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(price),
          ],
        ),
      ),
    );
  }
}
