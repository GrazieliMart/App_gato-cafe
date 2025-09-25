import 'package:flutter/material.dart';
import 'package:gatocafe/components/buttons.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDE9DB), // fundo bege
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400), // largura máxima para centralizar no desktop/web
            child: SingleChildScrollView( // evita overflow em telas pequenas
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // centraliza horizontalmente
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 24),

                  // Texto de título
                  const Text(
                    'Entre ou cadastre-se',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.brown,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
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

                  // Botão de fechar
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
