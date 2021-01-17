part of 'models.dart';

class Product extends Equatable {
  final int id;
  final String nama;
  final int harga;

  Product({
    this.id,
    this.nama,
    this.harga,
  });

  factory Product.fromJson(Map<String, dynamic> data) =>
      Product(id: data['id'], nama: data['nama'], harga: data['harga']);

  @override
  List<Object> get props => [id, nama, harga];
}

List<Product> mockProducts = [
  Product(
    id: 1,
    nama: "Permen",
    harga: 1000,
  ),
  Product(
    id: 2,
    nama: "Mie Instan",
    harga: 3000,
  ),
  Product(
    id: 3,
    nama: "Kopi",
    harga: 2500,
  ),
  Product(
    id: 4,
    nama: "Air Mineral",
    harga: 3500,
  ),
  Product(
    id: 5,
    nama: "Beras 1kg",
    harga: 13000,
  ),
  Product(
    id: 6,
    nama: "Gula 1kg",
    harga: 12000,
  ),
  Product(
    id: 7,
    nama: "Minyak Goreng 1lt",
    harga: 12000,
  ),
  Product(
    id: 8,
    nama: "Sabun Cuci",
    harga: 1000,
  ),
];
