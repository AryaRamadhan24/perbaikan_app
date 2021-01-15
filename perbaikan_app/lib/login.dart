import 'dart:ui';
import 'package:flutter/material.dart';
import 'komponen/form.dart';
import 'menus/Register.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Perbaik.an',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
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
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: Myform(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 220, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Belum Punya akun?',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  ElevatedButton(
                    child: Text(
                          "DAFTAR",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => RegisterPage())),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                      // child: Text('Buat Akun')
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
