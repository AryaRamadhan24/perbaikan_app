import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login/login.dart';

class PengaduanPage extends StatefulWidget {
  @override
  PengaduanPageState createState() => PengaduanPageState();
}

class PengaduanPageState extends State<PengaduanPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  'assets/images/user.png',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Container(
                  height: 400.0,
                  width: 300.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ListView(
                    children: <Widget>[
                      FormAduan("Nama", "Muhammad Arya Ramadhan"),
                      FormAduan("Alamat", "Perumahan Puri Cempaka"),
                      FormAduan("Email", "182410102035@cs.unej.ac.id"),
                      FormAduan("No Telp", "08992727299")
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: MaterialButton(
                  onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => LoginPage())),
                  minWidth: 150.0,
                  color: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container FormAduan(String nama, String hintext) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0,
            ),
            child: Text(
              nama,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: TextField(
              autocorrect: false,
              autofocus: false,
              style: TextStyle(
                fontSize: 15.0,
              ),
              decoration: InputDecoration(
                  hintText: hintext,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15.0)),
            ),
          ),
        ],
      ),
    );
  }
}
