part of 'models.dart';

class Transaction extends Equatable {
  final int id;
  final Product product;
  final int quantity;
  final int total;
  final DateTime dateTime;

  Transaction({
    this.id,
    this.product,
    this.quantity,
    this.total,
    this.dateTime,
  });

  @override
  List<Object> get props => [id, product, quantity, total, dateTime];
}

List<Transaction> mockTransactions = [
  Transaction(
    id: 1,
    product: mockProducts[1],
    quantity: 10,
    total: mockProducts[1].harga * 10,
    dateTime: DateTime.now(),
  ),
  Transaction(
    id: 2,
    product: mockProducts[2],
    quantity: 7,
    total: mockProducts[2].harga * 7,
    dateTime: DateTime.now(),
  ),
  Transaction(
    id: 3,
    product: mockProducts[3],
    quantity: 5,
    total: mockProducts[3].harga * 5,
    dateTime: DateTime.now(),
  )
];
