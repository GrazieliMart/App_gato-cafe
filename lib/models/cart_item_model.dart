class CartItemModel {
  final String title;
  final String subtitle;
  final String image;
  final double price;
  int qty;

  CartItemModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    this.qty = 1,
  });
}
