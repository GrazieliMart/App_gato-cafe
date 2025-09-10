import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(radius: 36, child: Icon(Icons.person)),
            SizedBox(height: 12),
            Text('Usuário', style: TextStyle(fontSize: 22)),
            SizedBox(height: 12),
            ListTile(title: Text('Meus pedidos'), trailing: Icon(Icons.arrow_forward)),
            ListTile(title: Text('Editar cadastro'), trailing: Icon(Icons.arrow_forward)),
            ListTile(title: Text('Excluir conta'), trailing: Icon(Icons.delete, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
