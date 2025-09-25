import 'package:flutter/material.dart';
import '../models/cart_item_model.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItemModel> _items = [];
  String? _appliedCoupon;
  double _discountValue = 0.0;

  List<CartItemModel> get items => _items;

  /// Total bruto (sem desconto)
  double get totalPrice =>
      _items.fold(0, (sum, item) => sum + (item.price * item.qty));

  /// Nome do cupom aplicado
  String? get appliedCoupon => _appliedCoupon;

  /// Valor do desconto aplicado
  double get discountValue =>
      _discountValue > totalPrice ? totalPrice : _discountValue;

  /// Total final (já com desconto)
  double get finalPrice => (totalPrice - discountValue).clamp(0, double.infinity);

  /// Aplica um cupom
  void applyCoupon(String couponName, double discount) {
    _appliedCoupon = couponName;
    _discountValue = discount;
    notifyListeners();
  }

  /// Remove o cupom
  void removeCoupon() {
    _appliedCoupon = null;
    _discountValue = 0.0;
    notifyListeners();
  }

  /// Adiciona item ao carrinho
  void addItem(CartItemModel item, int qty) {
    final index = _items.indexWhere((e) => e.title == item.title);
    if (index >= 0) {
      _items[index].qty += qty; // já existe → soma quantidade
    } else {
      item.qty = qty;
      _items.add(item);
    }
    notifyListeners();
  }

  /// Remove item do carrinho
  void removeItem(CartItemModel item) {
    _items.remove(item);
    notifyListeners();
  }

  /// Limpa carrinho (e cupom também)
  void clearCart() {
    _items.clear();
    removeCoupon();
    notifyListeners();
  }
}
