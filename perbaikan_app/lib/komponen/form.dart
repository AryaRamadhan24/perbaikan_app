import 'package:flutter/material.dart';
import 'package:login/home.dart';

class Myform extends StatefulWidget {
  @override
  _MyformState createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
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
                  labelStyle: TextStyle(color: Colors.white70, fontSize: 14)),
            ),
            TextFormField(
              controller: _passwordController,
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
                  labelStyle: TextStyle(color: Colors.white70, fontSize: 14)),
            ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Container(
            //     margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            //     child: Text(
            //       "Lupa kata sandi? ",
            //       style: TextStyle(color: Colors.white, fontSize: 12),
            //     ),
            //   ),
            // ),
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
                          "MASUK",
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
                                    builder: (context) => homePage()));
                          }
                        },
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
