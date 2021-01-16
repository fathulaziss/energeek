import 'package:energeek/models/models.dart';
import 'package:flutter/material.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HistoryTransaksiPage(transaction: Transaction())

        // SuccessTransaksiPage(),

        //     KonfirmasiPage(
        //   transaction: Transaction(
        //       product: mockProducts[0],
        //       quantity: 2,
        //       total: mockProducts[0].price * 2),
        // )

        //     MainPage(
        //   product: Product(),
        //   transaction: Transaction(
        //     product: mockProducts[0],
        //   ),
        // ),
        );
  }
}
