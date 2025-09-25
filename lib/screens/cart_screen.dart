  import 'package:flutter/material.dart';
  import 'package:provider/provider.dart';
  import '../providers/cart_provider.dart';
  import '../models/cart_item_model.dart';

  class CartScreen extends StatelessWidget {
    const CartScreen({super.key});

    void _showCoupons(BuildContext context, CartProvider cart) {
      showModalBottomSheet(
        context: context,
        backgroundColor: const Color(0xFFFFF4E8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
             _CouponTile(
  title: "Cupom Boas Vindas",
  description: "5 reais de desconto em todos os produtos",
  enabled: true, // agora sempre dá pra aplicar
  onApply: () {
    cart.applyCoupon("Boas Vindas", 5);
    Navigator.pop(context);
  },
),

                const SizedBox(height: 12),
             _CouponTile(
  title: "Cupom Quarta Mágica",
  description: "10 reais de desconto para carrinhos acima de 80 reais",
  enabled: cart.totalPrice >= 80,
  onApply: () {
    cart.applyCoupon("Quarta Mágica", 10);
    Navigator.pop(context);
  },
),

                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Voltar",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    @override
    Widget build(BuildContext context) {
      final cart = Provider.of<CartProvider>(context);

      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFF4E8),
            image: DecorationImage(
              image: AssetImage("../assets/images/fundo-padrao.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Cabeçalho
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.red),
                          onPressed: () => Navigator.pop(context),
                        ),
                        const Spacer(),
                        const Text(
                          "Carrinho",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => cart.clearCart(),
                          child: const Text(
                            "Limpar",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Lista de itens
                    Expanded(
                      child: ListView.builder(
                        itemCount: cart.items.length,
                        itemBuilder: (context, index) {
                          final item = cart.items[index];
                          return CartItemWidget(item: item);
                        },
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Botão adicionar cupom
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    padding: const EdgeInsets.symmetric(vertical: 14),
  ),
  icon: Image.asset("../assets/images/patinha.png", height: 20),
  label: Text(
    cart.appliedCoupon == null ? "Adicionar cupom" : "Trocar cupom",
    style: const TextStyle(fontSize: 16, color: Colors.white),
  ),
  onPressed: () => _showCoupons(context, cart),
),

                    ),
                    const SizedBox(height: 12),

                    // Botão adicionar mais itens
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.red, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "Adicionar mais itens",
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Total
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("../assets/images/fundo-carrinho.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Total",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
                                ),
                                Text(
                                  "R\$${cart.finalPrice.toStringAsFixed(2)}",
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  cart.appliedCoupon != null
                                      ? "Cupom: ${cart.appliedCoupon}"
                                      : "Cupom: Nenhum adicionado",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Continuar",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
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

  class _CouponTile extends StatelessWidget {
    final String title;
    final String description;
    final bool enabled;
    final VoidCallback onApply;

    const _CouponTile({
      required this.title,
      required this.description,
      required this.enabled,
      required this.onApply,
    });

    @override
    Widget build(BuildContext context) {
      return Opacity(
        opacity: enabled ? 1.0 : 0.4,
        child: ListTile(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Colors.red),
          ),
          title: Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red)),
          subtitle: Text(description,
              style: const TextStyle(color: Colors.brown)),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: enabled ? onApply : null,
            child: const Text("Aplicar",
                style: TextStyle(color: Colors.white)),
          ),
        ),
      );
    }
  }

  class CartItemWidget extends StatelessWidget {
    final CartItemModel item;
    const CartItemWidget({super.key, required this.item});

    @override
    Widget build(BuildContext context) {
      final cart = Provider.of<CartProvider>(context, listen: false);

      return Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFD29062),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(item.image, height: 70, width: 70),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white)),
                  Text(item.subtitle,
                      style: const TextStyle(color: Colors.white)),
                  Text("R\$ ${item.price.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.yellow),
                        onPressed: () {
                          if (item.qty > 1) {
                            item.qty--;
                          } else {
                            cart.removeItem(item);
                          }
                          cart.notifyListeners();
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("${item.qty}",
                            style: const TextStyle(
                                fontSize: 13, color: Colors.white)),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.yellow),
                        onPressed: () {
                          item.qty++;
                          cart.notifyListeners();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.black87),
              onPressed: () => cart.removeItem(item),
            ),
          ],
        ),
      );
    }
  }
