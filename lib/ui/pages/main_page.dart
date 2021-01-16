part of 'pages.dart';

class MainPage extends StatefulWidget {
  final Product product;
  final Transaction transaction;

  MainPage({this.product, this.transaction});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "FAFAFC".toColor(),
      body: ListView(
        children: [
          Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "APLIKASI KASIR",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // Content
              Container(
                width: double.infinity,
                height: 450,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: ListView(
                    // children: mockProducts.map((e) => ProductCard(e)).toList(),
                    children: mockProducts
                        .map((e) => Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 5, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e.name,
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            NumberFormat.currency(
                                              locale: 'id-ID',
                                              symbol: "IDR ",
                                              decimalDigits: 0,
                                            ).format(e.price),
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
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
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(width: 1),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/btn_min.png"))),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            child: Text(
                                              quantity.toString(),
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                quantity =
                                                    min(999, quantity + 1);
                                              });
                                            },
                                            child: Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(width: 1),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/btn_add.png"))),
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
                            ))
                        .toList()),
              ),
              Container(
                width: 250,
                height: 45,
                child: ((quantity * widget.transaction.product.price) > 0)
                    ? RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        color: "0071ED".toColor(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: "id-ID",
                                symbol: "IDR ",
                                decimalDigits: 0,
                              ).format(
                                  quantity * widget.transaction.product.price),
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    : RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        color: "E5E5E5".toColor(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: "id-ID",
                                symbol: "IDR ",
                                decimalDigits: 0,
                              ).format(
                                  quantity * widget.transaction.product.price),
                              style: GoogleFonts.poppins(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
              ),

              Container(
                margin: EdgeInsets.only(top: 15),
                width: 250,
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: "0071ED".toColor(),
                  child: Text(
                    "Data Transaksi",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
