import 'package:flutter/material.dart';
import 'package:gatocafe/screens/user_screen.dart';

class OrderSuccessDialog extends StatelessWidget {
  const OrderSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFD29062),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("../assets/images/gato.png", height: 120), // gatinho preto
            const SizedBox(height: 16),

            // 🔥 Aqui troca o emoji por imagem
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/patinha.png", height: 40),
                const SizedBox(width: 8),
                const Text(
                  "Sucesso!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),
            const Text(
              "Já estamos preparando o seu pedido.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pop(context); // fecha o dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const UserScreen()), // 👈 vai para UserScreen
                );
              },
              child: const Text("Ver pedido",  style: TextStyle(color: Colors.white),),
              
            ),
            const SizedBox(height: 10),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("Voltar", style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
