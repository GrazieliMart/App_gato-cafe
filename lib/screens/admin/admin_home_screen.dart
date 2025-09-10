import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin - GatoCafé')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Gerenciar produtos (demo)'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Ver pedidos (demo)'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Cupons e descontos (demo)'),
            ),
          ],
        ),
      ),
    );
  }
}
