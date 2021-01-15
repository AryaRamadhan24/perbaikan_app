import 'dart:ui';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PengaduanPage extends StatefulWidget {
  @override
  PengaduanPageState createState() => PengaduanPageState();
}

class PengaduanPageState extends State<PengaduanPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/aduan.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/images/user.png',
                    height: 100.0,
                    width: 100.0,
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Stack(
                  children: <Widget> [
                    SingleChildScrollView(
                      child: Container(
                        height: 480.0,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                              ),
                              child: Text(
                                'Nama Lengkap',
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
                             child:  TextField(
                               autocorrect: false,
                               autofocus: false,
                               style: TextStyle(
                                 fontSize: 15.0,
                               ),
                               decoration: InputDecoration(
                                   hintText: "Nama",
                                   border: InputBorder.none,
                                   filled: true,
                                   fillColor: Colors.white,
                                   contentPadding: EdgeInsets.all(15.0)
                               ),
                             ),
                           ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                              ),
                              child: Text(
                                'Nama Lengkap',
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
                              child:  TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Nama",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15.0)
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                              ),
                              child: Text(
                                'Nama Lengkap',
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
                              child:  TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Nama",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15.0)
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                              ),
                              child: Text(
                                'Nama Lengkap',
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
                              child:  TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Nama",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15.0)
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                              ),
                              child: Text(
                                'Nama Lengkap',
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
                              child:  TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Nama",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.all(15.0)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                child: MaterialButton(
                  onPressed: (){},
                  minWidth: 150.0,
                  color: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Text(
                    'Login',
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
}
