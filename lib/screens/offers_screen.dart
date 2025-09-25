import 'package:flutter/material.dart';

class OfertasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEAD4),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("../assets/images/fundo-appbar.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: Image.asset(
                    "../assets/images/logo-nav.png",
                    height: 250,
                  ),
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {},
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
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Card principal com pontos
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Cabeçalho
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Pontuações e recompensas de:",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.brown,
                                ),
                              ),
                              Text(
                                "Usuário",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Pontos
                      const Text(
                        "29 pontos",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Barra de progresso com deslocamento à esquerda
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: LinearProgressIndicator(
                                value: 1 / 60,
                              
                                minHeight: 10,
                                backgroundColor: Colors.orange[100],
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(height: 8),
                          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: const [
    Text(
      "30 Pts",
      style: TextStyle(fontSize: 12), // diminuiu a fonte
    ),
    Text(
      "40 Pts",
      style: TextStyle(fontSize: 12),
    ),
    Text(
      "50 Pts",
      style: TextStyle(fontSize: 12),
    ),
    Text(
      "60 Pts",
      style: TextStyle(fontSize: 12),
    ),
  ],
),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Card Miaau
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 150),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD09052),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "../assets/images/miau.png",
                                  width: 120,
                                  height: 50,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 4),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF744E43),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(text: "Faltam apenas "),
                                      TextSpan(
                                        text: "1 ponto",
                                        style: TextStyle(color: Color(0xFFFFB321)),
                                      ),
                                      TextSpan(text: " para você ganhar um:"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              "../assets/images/cafe.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -100,
                      left: 20,
                      child: Image.asset(
                        "../assets/images/gato-ofertas.png",
                        height: 220,
                      ),
                    ),
                  ],
                ),
              

              
             
                const SizedBox(height: 20),

                // Cards das recompensas
           Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   // 30 Pts - card único
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Text(
      "Veja as recompensas",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.brown,
      ),
    ),
    const SizedBox(height: 12),
    ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset("../assets/images/patinha.png", height: 20),
      label: const Text("30 Pts"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    const SizedBox(height: 16),
    RewardCardSingle(
      image: "../assets/images/cafe.png",
      title: "Café Expresso",
      subtitle: "150 ml",
    ),
  ],
),

const SizedBox(height: 20),

// 40 Pts - dois cards lado a lado
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
 
    const SizedBox(height: 12),
    ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset("../assets/images/patinha.png", height: 20),
      label: const Text("40 Pts"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    const SizedBox(height: 16),
    Row(
      children: [
        Expanded(
          child: RewardCardVertical(
            image: "../assets/images/bolo-de-cenoura.png",
            title: "Bolo de Cenoura",
            subtitle: "1 fatia de 300g",
          ),
        ),
        const SizedBox(width: 8),
        Column(
          children: const [
            Text(
              "Ou",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RewardCardVertical(
            image: "../assets/images/brownie.png",
            title: "Brownie",
            subtitle: "1 fatia de 300g",
          ),
        ),
      ],
    ),
  ],
),

const SizedBox(height: 20),

// 50 Pts - card único
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   
    const SizedBox(height: 12),
    ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset("../assets/images/patinha.png", height: 20),
      label: const Text("50 Pts"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    const SizedBox(height: 16),
    RewardCardSingle(
      image: "../assets/images/passe-vip.png",
      title: "Passe Vip",
      subtitle: "1 entrada Grátis para gatódromo.",
    ),
  ],
),

const SizedBox(height: 20),

// 60 Pts - dois cards lado a lado
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   
    const SizedBox(height: 12),
    ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset("../assets/images/patinha.png", height: 20),
      label: const Text("60 Pts"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    const SizedBox(height: 16),
    Row(
      children: [
        Expanded(
          child: RewardCardVertical(
            image: "../assets/images/pao-manteiga.png",
            title: "4 Pães na Chapa",
            subtitle: "com manteiga",
          ),
        ),
        const SizedBox(width: 8),
        Column(
          children: const [
            Text(
              "Ou",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RewardCardVertical(
            image: "../assets/images/pao-de-queijo.png",
            title: "4 Pães de Queijo",
            subtitle: "150g cada",
          ),
        ),
      ],
    ),
  ],
),

    const SizedBox(height: 16),

  ],
),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 2, // índice de "Ofertas"
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

// CARD VARIANTS

// Vertical (para dois cards "OU")
class RewardCardVertical extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const RewardCardVertical({required this.image, required this.title, required this.subtitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 2))],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 80),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: Colors.brown)),
        ],
      ),
    );
  }
}

// Horizontal único (para 30pts e 50pts)
class RewardCardSingle extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const RewardCardSingle({required this.image, required this.title, required this.subtitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(2, 2))],
      ),
      child: Row(
        children: [
          Image.asset(image, width: 80, height: 80, fit: BoxFit.cover),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.brown)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.brown)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
