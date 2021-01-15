import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

final listData = [
  ["Jalan Berlubang","arya","sdkdsk"],
  ["Lampu Merah Error","arya","sdkdsk"],
  ["Selokan Tersumbat","arya","sdkdsk"],
  ["Jalan Berlubang","arya","sdkdsk"],
];


class HelpWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            // decoration: BoxDecoration(
            // image: DecorationImage(
            // image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text('Perbaik.an',
                  style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontSize: 40, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageIcon(
                  AssetImage('assets/images/icon.png'),
                  size: 100,
            )
          ],
        ),
      ),
              Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    'Hello, Cara menggunakan aplikasi ini adalah,',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'pertama pengguna dapat memilih menu aduan,',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'Pilih tambah aduan Selanjutnya isi form untuk',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'tambah aduan lalu klik kirim Laporan aduan yang',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'telah dikirimkan dapat dilihat progres nya melalui',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'menu progress yang dapat dipantau sampai perbaikan',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'fasilitas tersebut benar-benar selesai',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Team Pengembang',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset('assets/images/aena.png'),
                ),
                Expanded(
                  child: Image.asset('assets/images/arya.png'),
                ),
                Expanded(
                  child: Image.asset('assets/images/devy.png'),
                ),
              ],
            )
            ]
    )
    )
        )
    );
  }
}
