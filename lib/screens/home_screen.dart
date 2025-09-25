import 'package:flutter/material.dart';
import 'btn_padrao_sem_fundo.dart'; // importa o botão reutilizável
import '../providers/cart_provider.dart';
import '../models/cart_item_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEAD4), // fundo do body
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          const BannerSlider(),

            const SizedBox(height: 16),

            // Título
            Row(
              children: [
                Image.asset("../assets/images/patinha.png", width: 24, height: 24),
                const SizedBox(width: 8),
                const Text(
                  'Melhores da casa',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Produtos
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    title: 'Café expresso',
                    subtitle: '150ml',
                    price: 2.50,
                    image: '../assets/images/cafe.png',
                  ),
                  ProductCard(
                    title: 'Pão de Queijo',
                    subtitle: '10 unidades',
                    price: 5.50,
                    image: '../assets/images/pao-de-queijo.png',
                  ),
                  ProductCard(
                    title: 'Leite com chocolate',
                    subtitle: '350ml',
                    price: 3.50,
                    image: '../assets/images/leite-com-chocolate.png',
                  ),
                  ProductCard(
                    title: 'Cappucino',
                    subtitle: '250ml',
                    price: 2.50,
                    image: '../assets/images/cappucino.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),

            Row(
              children: [
                Image.asset("../assets/images/patinha.png", width: 24, height: 24),
                const SizedBox(width: 8),
                const Text(
                  'Lanches',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),

            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    title: 'Lanche de carne',
                    subtitle: '500g',
                    price: 9.50,
                    image: '../assets/images/lanche-de-carne.png',
                  ),
                  ProductCard(
                    title: 'Empadinha de palmito',
                    subtitle: '5 unidades',
                    price: 4.50,
                    image: '../assets/images/empada.png',
                  ),
                  ProductCard(
                    title: 'Sanduíche Bauru',
                    subtitle: '1 unidade',
                    price: 4.50,
                    image: '../assets/images/tostex.png',
                  ),
                     ProductCard(
                    title: 'Pão de manteiga',
                    subtitle: '6 unidades',
                    price: 3.50,
                    image: '../assets/images/pao-manteiga.png',
                  ),
                ],
              ),
            ),
                   const SizedBox(height: 12),
                  Row(
              children: [
                Image.asset("../assets/images/patinha.png", width: 24, height: 24),
                const SizedBox(width: 8),
                const Text(
                  'Bebidas',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),

            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    title: 'Cafe expresso',
                    subtitle: '150ml',
                    price: 9.50,
                    image: '../assets/images/cafe.png',
                  ),
                  ProductCard(
                    title: 'Cappuccino',
                    subtitle: '250ml',
                    price: 2.50,
                    image: '../assets/images/cappucino.png',
                  ),
                  ProductCard(
                    title: 'Sanduíche Bauru',
                    subtitle: '350ml',
                    price: 3.50,
                    image: '../assets/images/leite-com-chocolate.png',
                  ),
              
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        currentIndex: 0,
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
  final String subtitle;
  final double price;
  final String image;

  ProductCard({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
  });

  void _showProductDialog(BuildContext context) {
    int quantidade = 1;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              backgroundColor: const Color(0xFFD09052),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.close, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Image.asset(image, height: 120),
                    const SizedBox(height: 12),

                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      "R\$ ${price.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

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
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                      ),
                      onPressed: () {
                        final cart = Provider.of<CartProvider>(context, listen: false);
                        cart.addItem(
                          CartItemModel(
                            title: title,
                            subtitle: subtitle,
                            image: image,
                            price: price,
                          ),
                          quantidade,
                        );

                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("$quantidade x $title adicionado ao carrinho"),
                            duration: const Duration(seconds: 2),
                          ),
                        );
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
      onTap: () => _showProductDialog(context),
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
            Column(
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF5D2A1A),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                BtnPadraoSemFundo(
                  text: "R\$ ${price.toStringAsFixed(2)}",
                  onPressed: () => _showProductDialog(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _controller = PageController();
  final List<String> _images = [
    '../assets/images/banner.png',
    '../assets/images/banner-cappuccino.png',
    '../assets/images/banner-gatodromo.png',
    '../assets/images/banner-quiz.png',
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, _autoSlide);
  }

  void _autoSlide() {
    Future.delayed(const Duration(seconds: 3), () {
      if (_controller.hasClients) {
        _currentPage = (_currentPage + 1) % _images.length;
        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
      _autoSlide();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(_images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_images.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 12 : 8,
              height: _currentPage == index ? 12 : 8,
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.red : Colors.grey,
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}