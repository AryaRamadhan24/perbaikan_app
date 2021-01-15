import 'dart:ui';
import 'package:flutter/material.dart';
import '../komponen/form.dart';
import 'package:login/login.dart';





class RegisterPage extends StatelessWidget {
  @override
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                children: <Widget>[],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) =>
                          val.isEmpty ? "Email tidak boleh kosong!" : null,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.go,
                      obscureText: false,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue)),
                          labelText: "Email :",
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 14)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (val) =>
                          val.isEmpty ? "Nama tidak boleh kosong!" : null,
                      textInputAction: TextInputAction.go,
                      obscureText: false,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue)),
                          labelText: "Nama :",
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 14)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (val) =>
                          val.isEmpty ? "No. Telpon tidak boleh kosong!" : null,
                      textInputAction: TextInputAction.go,
                      obscureText: false,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue)),
                          labelText: "No. Telp :",
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 14)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (val) =>
                          val.isEmpty ? "Password tidak boleh kosong!" : null,
                      textInputAction: TextInputAction.go,
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue)),
                          labelText: "Kata Sandi :",
                          labelStyle:
                              TextStyle(color: Colors.white70, fontSize: 14)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                              width: 150,
                              height: 35,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Colors.white,
                                splashColor: Colors.white,
                                child: Text(
                                  "DAFTAR",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    // Scaffold.of(context).showSnackBar(
                                    //     SnackBar(content: Text('Selamat Datang!')));
                                    Duration(seconds: 2);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  }

                                },
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 220, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('sudah Punya akun?',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => LoginPage())),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    child: Text(
                      "MASUK",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
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
