import 'package:flutter/material.dart';
import 'btn_padrao_sem_fundo.dart'; // botão reutilizável da Home

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEAD4), // fundo bege igual a Home
         appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("../assets/images/fundo-appbar.png"), // imagem de fundo
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Esquerda: Texto "Oi, Usuário"
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Oi, Usuário",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                // Centro: Logo do gato, deslocada um pouco para a esquerda
                Transform.translate(
                  offset: const Offset(-20, 0), // move 20 pixels para a esquerda
                  child: Image.asset(
                    "../assets/images/logo-nav.png",
                    height: 250, // aumenta a logo
                  ),
                ),

                // Direita: Ícone de menu com notificação
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        // abre drawer ou menu
                      },
                    ),
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    
      // Corpo principal
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título com ícone (Patinha)
            Row(
              children: [
                Image.asset("../assets/images/patinha.png", width: 24, height: 24),
                const SizedBox(width: 8),
                const Text(
                  "Todos os Produtos",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Grid de produtos (2 colunas)
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                   ProductCard(
  title: 'Pão de Queijo',
  image: '../assets/images/pao-de-queijo.png',
  priceWidget: Column(
    children: [
      const Text(
        "10 unidades", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 5,50",
        onPressed: () {
          print('Pão de Queijo selecionado');
        },
      ),
    ],
  ),
),

              ProductCard(
  title: 'Café Expresso',
  image: '../assets/images/cafe.png',
  priceWidget: Column(
    children: [
      const Text(
        "150ml", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 2,50",
        onPressed: () {
          print('Café Expresso selecionado');
        },
      ),
    ],
  ),
),

              
           ProductCard(
  title: 'Leite com chocolate',
  image: '../assets/images/leite-com-chocolate.png',
  priceWidget: Column(
    children: [
      const Text(
        "350ml", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 3,50",
        onPressed: () {
          print('Leite com chocolate selecionado');
        },
      ),
    ],
  ),
),

              

ProductCard(
  title: 'Cappucino',
  image: '../assets/images/cappucino.png',
  priceWidget: Column(
    children: [
      const Text(
        "250ml", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 2,50", // usa o estilo do botão
        onPressed: () {
          print('Cappucino selecionado');
        },
      ),
    ],
  ),
), ProductCard(
  title: 'Lanche de carne',
  image: '../assets/images/lanche-de-carne.png',
  priceWidget: Column(
    children: [
      const Text(
        "500g", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 9,50",
        onPressed: () {
          print('Lanche de carne selecionado');
        },
      ),
    ],
  ),
),

              ProductCard(
  title: 'Empadinha de palmito',
  image: '../assets/images/empada.png',
  priceWidget: Column(
    children: [
      const Text(
        "5 unidades", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 6,50",
        onPressed: () {
          print('Empada de palmito selecionado');
        },
      ),
    ],
  ),
),

ProductCard(
  title: 'Sanduíche Bauru',
  image: '../assets/images/tostex.png',
  priceWidget: Column(
    children: [
      const Text(
        "1 unidade", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 6,50", // usa o estilo do botão
        onPressed: () {
          print('Sanduíche Bauru selecionado');
        },
      ),
    ],
  ),
),


ProductCard(
  title: 'Brownie',
  image: '../assets/images/brownie.png',
  priceWidget: Column(
    children: [
      const Text(
        "1 unidade", // "p" acima
        style: TextStyle(
          color: Color(0xFF5D2A1A), // marrom
          fontSize: 12,
        ),
      ),

      BtnPadraoSemFundo(
        text: "R\$ 1,50", // usa o estilo do botão
        onPressed: () {
          print('Brownie de chocolate selecionado');
        },
      ),
    ],
  ),
),
              ],
            )
          ],
        ),
      ),

      // Bottom Navigation igual à Home
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 1, // estamos na aba Produtos
        onTap: (i) {
          if (i == 0) Navigator.pushNamed(context, '/home');
          if (i == 1) Navigator.pushNamed(context, '/products');
          if (i == 2) Navigator.pushNamed(context, '/offers');
          if (i == 3) Navigator.pushNamed(context, '/cart');
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("../assets/images/home.png", height: 24, color: Colors.black54),
            activeIcon: Image.asset("../assets/images/home.png", height: 24, color: Colors.red),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("../assets/images/produtos.png", height: 24, color: Colors.black54),
            activeIcon: Image.asset("../assets/images/produtos.png", height: 24, color: Colors.red),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("../assets/images/ofertas.png", height: 24, color: Colors.black54),
            activeIcon: Image.asset("../assets/images/ofertas.png", height: 24, color: Colors.red),
            label: 'Ofertas',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("../assets/images/carrinho.png", height: 24, color: Colors.black54),
            activeIcon: Image.asset("../assets/images/carrinho.png", height: 24, color: Colors.red),
            label: 'Carrinho',
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final Widget priceWidget;

  ProductCard({
    required this.title,
    required this.image,
    required this.priceWidget,
  });

  void _showProductDialog(BuildContext context) {
    int quantidade = 1;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              backgroundColor: Color(0xFFD09052), // cor de fundo do card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Botão fechar no canto
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.close, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Imagem do produto
                    Image.asset(image, height: 120),

                    const SizedBox(height: 12),

                    // Nome do produto
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Medida/descrição
                    const Text(
                      "150ml",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Preço
                    const Text(
                      "R\$ 5,00",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Controle de quantidade
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (quantidade > 1) {
                              setState(() => quantidade--);
                            }
                          },
                          icon: const Icon(Icons.remove, color: Colors.yellow),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            quantidade.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => setState(() => quantidade++),
                          icon: const Icon(Icons.add, color: Colors.yellow),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Botão adicionar
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 40),
                      ),
                      onPressed: () {
                        print(
                            "$quantidade x $title adicionado ao carrinho");
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Adicionar",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showProductDialog(context), // <<< agora abre o modal
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(2, 2),
            )
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, height: 80, fit: BoxFit.contain),
            Text(title, textAlign: TextAlign.center),
            priceWidget,
          ],
        ),
      ),
    );
  }
}
