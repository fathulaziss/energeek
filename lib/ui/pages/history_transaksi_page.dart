part of 'pages.dart';

class HistoryTransaksiPage extends StatefulWidget {
  final Transaction transaction;

  HistoryTransaksiPage({this.transaction});
  @override
  _HistoryTransaksiPageState createState() => _HistoryTransaksiPageState();
}

class _HistoryTransaksiPageState extends State<HistoryTransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Get.back();
        return;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              children: [
                //Header
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 24),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/back_arrow.png"),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "DATA TRANSAKSI",
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
                Container(
                  width: double.infinity,
                  height: 450,
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: ListView(
                    children: mockTransactions
                        .map((e) => Column(
                              children: [
                                Container(
                                  color: "E2E2E2".toColor(),
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 10, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e.product.nama,
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            NumberFormat.currency(
                                              locale: "id-ID",
                                              symbol: "IDR ",
                                              decimalDigits: 0,
                                            ).format(e.total),
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      Text(
                                        convertDateTime(e.dateTime),
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.black,
                                )
                              ],
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  String convertDateTime(DateTime dateTime) {
    String month;

    switch (dateTime.month) {
      case 1:
        month = "Januari";
        break;
      case 2:
        month = "Februari";
        break;
      case 3:
        month = "Maret";
        break;
      case 4:
        month = "April";
        break;
      case 5:
        month = "Mei";
        break;
      case 6:
        month = "Juni";
        break;
      case 7:
        month = "Juli";
        break;
      case 8:
        month = "Agustus";
        break;
      case 9:
        month = "September";
        break;
      case 10:
        month = "Oktober";
        break;
      case 11:
        month = "November";
        break;
      default:
        month = "Desember";
    }

    return "${dateTime.day} " + month + " ${dateTime.year}";
  }
}
