class OrderModel {
  final int id;
  final DateTime date;
  final List<Map<String, dynamic>> items;
  final double total;
  final int points;
  final String notes;

  OrderModel({
    required this.id,
    required this.date,
    required this.items,
    required this.total,
    required this.points,
    required this.notes,
  });
}
