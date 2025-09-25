import 'package:flutter/material.dart';

class BtnPadraoSemFundo extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BtnPadraoSemFundo({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFF744E43), // cor do texto
        backgroundColor: Colors.transparent, // fundo transparente
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        side: const BorderSide(
          color: Color(0xFFDD2525), // cor da borda
          width: 2, // largura da borda
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // cantos arredondados
        ),
      ),
      child: Text(text),
    );
  }
}
