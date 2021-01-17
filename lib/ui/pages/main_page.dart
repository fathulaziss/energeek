part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              Container(
                height: 30,
                color: "FAFAFC".toColor(),
              ),
              // Content
              Container(
                  width: double.infinity,
                  height: 450,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 30),
                  child: ListView(
                    children: mockProducts
                        .map((e) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProductCard(e),
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
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_min.png"))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                      child: Text(
                                        quantity.toString(),
                                        textAlign: TextAlign.center,
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
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/btn_add.png")),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                        .toList(),
                  )),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 250,
                height: 45,
                child: (quantity > 0)
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
                              ).format(quantity),
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
                              ).format(quantity),
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
                  onPressed: () {
                    Get.to(HistoryTransaksiPage());
                  },
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
