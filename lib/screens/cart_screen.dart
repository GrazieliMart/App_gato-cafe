import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carrinho')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CartItem(title: 'Café Expresso', qty: 2, price: 'R\$ 5,00'),
                  CartItem(title: 'Pão de queijo', qty: 1, price: 'R\$ 5,50'),
                ],
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: Text('Total', style: TextStyle(fontSize: 20))),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Continuar'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String title;
  final int qty;
  final String price;
  CartItem({required this.title, required this.qty, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.local_cafe),
        title: Text(title),
        subtitle: Text('Quantidade: \$qty'),
        trailing: Text(price),
      ),
    );
  }
}
