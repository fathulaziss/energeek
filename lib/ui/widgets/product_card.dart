part of 'widgets.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard(this.product);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                      NumberFormat.currency(
                        locale: 'id-ID',
                        symbol: "IDR ",
                        decimalDigits: 0,
                      ).format(widget.product.price),
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity = max(0, quantity - 1);
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1),
                          image: DecorationImage(
                              image: AssetImage("assets/btn_min.png"))),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    child: Text(
                      quantity.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        quantity = min(999, quantity + 1);
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1),
                          image: DecorationImage(
                              image: AssetImage("assets/btn_add.png"))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Colors.black,
        )
      ],
    );
  }
}
