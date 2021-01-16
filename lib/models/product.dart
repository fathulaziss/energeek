part of 'models.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final int price;

  Product({
    this.id,
    this.name,
    this.price,
  });

  @override
  List<Object> get props => [id, name, price];
}

List<Product> mockProducts = [
  Product(
    id: 1,
    name: "Permen",
    price: 1000,
  ),
  Product(
    id: 2,
    name: "Mie Instan",
    price: 3000,
  ),
  Product(
    id: 3,
    name: "Kopi",
    price: 2500,
  ),
  Product(
    id: 4,
    name: "Air Mineral",
    price: 3500,
  ),
  Product(
    id: 5,
    name: "Beras 1kg",
    price: 13000,
  ),
  Product(
    id: 6,
    name: "Gula 1kg",
    price: 12000,
  ),
  Product(
    id: 7,
    name: "Minyak Goreng 1lt",
    price: 12000,
  ),
  Product(
    id: 8,
    name: "Sabun Cuci",
    price: 1000,
  ),
];
