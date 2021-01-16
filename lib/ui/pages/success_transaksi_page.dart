part of 'pages.dart';

class SuccessTransaksiPage extends StatefulWidget {
  @override
  _SuccessTransaksiPageState createState() => _SuccessTransaksiPageState();
}

class _SuccessTransaksiPageState extends State<SuccessTransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          children: [
            //Header
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TRANSAKSI SUKSES",
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
            Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    height: 45,
                    margin: EdgeInsets.only(top: 200),
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: "0071ED".toColor(),
                      child: Text(
                        "Kembali Ke Home",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
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
                      color: "E5E5E5".toColor(),
                      child: Text(
                        "Lihat Data Transaksi",
                        style: GoogleFonts.poppins(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
