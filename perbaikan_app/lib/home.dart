import 'package:flutter/material.dart';
import 'package:login/menus/Help.dart';
import 'package:login/menus/Progress.dart';
import 'komponen/teks.dart';
import 'profil.dart';
import 'menus/aduan.dart';
// ignore: camel_case_types
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Home'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.report,
                      color: Colors.white,
                    ),
                    child: MyTeks("Aduan", Colors.white, 14, FontWeight.bold),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.poll_rounded,
                      color: Colors.white,
                    ),
                    child:
                        MyTeks("Progress", Colors.white, 14, FontWeight.bold),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.help_center,
                      color: Colors.white,
                    ),
                    child: MyTeks("Help", Colors.white, 14, FontWeight.bold),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    child: MyTeks("Profil", Colors.white, 14, FontWeight.bold),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: AduanWidget(),
                ),
                Center(
                  child: ProgressWidget(),
                ),
                Center(
                  child: HelpWidget(),
                ),
                PengaduanPage()
              ],
            ),
          ),
        ));
  }
}
