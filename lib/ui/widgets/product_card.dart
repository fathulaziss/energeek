part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      padding: EdgeInsets.fromLTRB(12, 0, 10, 10),
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), border: Border.all(width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            product.nama,
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(
            NumberFormat.currency(
              locale: 'id-ID',
              symbol: "IDR ",
              decimalDigits: 0,
            ).format(product.harga),
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
