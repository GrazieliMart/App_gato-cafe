import 'package:flutter/material.dart';
import 'package:gatocafe/components/buttons.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDE9DB), // fundo bege
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),

              // Logo
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 24),

              const Text(
                'Entre ou cadastre-se',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.brown,
                ),
              ),

              const SizedBox(height: 24),

              // Botão "Já sou cliente"
              PrimaryButton(
                text: 'Já sou cliente',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),

              const SizedBox(height: 12),

              // Botão "Criar conta"
              SecondaryButton(
                text: 'Criar conta',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),

              const SizedBox(height: 24),

              // Fechar
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Fechar',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
