import 'package:flutter/material.dart';
import 'responsive.dart';
import 'teks.dart';

class Button extends StatelessWidget {
  final String isiTombol;

  Button({this.isiTombol});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        width: displayWidth(context) * 0.4,
        height: displayHeight(context) * 0.05,

        // padding: EdgeInsets.symmetric(horizontal: displayWidth(context) * 0.2),
        // color: Colors.white,
        // onPressed: () {
        // Routes.changePage(context, homePage());

        child: Center(
          child: MyTeks(isiTombol, Colors.white, 20, null
              // ignore: unnecessary_brace_in_string_interps
              // isi: "${isiTombol}",
              // warna: Colors.white,
              // ukuran: 20,
              ),
        ));
  }
}
