part of 'pages.dart';

class KonfirmasiPage extends StatefulWidget {
  final Transaction transaction;

  KonfirmasiPage({this.transaction});

  @override
  _KonfirmasiPageState createState() => _KonfirmasiPageState();
}

class _KonfirmasiPageState extends State<KonfirmasiPage> {
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
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 24),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/back_arrow.png"),
                        ),
                      ),
                    ),
                    Text(
                      "KONFIRMASI",
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
                color: Colors.white,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: ListView(
                  children: [
                    Column(
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
                                    widget.transaction.product.name,
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    widget.transaction.product.price
                                            .toString() +
                                        " * " +
                                        widget.transaction.quantity.toString(),
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  NumberFormat.currency(
                                    locale: "id-ID",
                                    symbol: "IDR ",
                                    decimalDigits: 0,
                                  ).format(widget.transaction.total),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 45,
                margin: EdgeInsets.only(top: 15),
                child: RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: "0071ED".toColor(),
                  child: Text(
                    "Selesai",
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
