import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTeks extends StatelessWidget {
  MyTeks(this.isi, this.warna, this.ukuran, this.tebal);
  var isi;
  final Color warna;
  final double ukuran;
  final FontWeight tebal;

  @override
  Widget build(BuildContext context) {
    return Text(
      isi,
      style: TextStyle(color: warna, fontSize: ukuran, fontWeight: tebal),
    );
  }
}
