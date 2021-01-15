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
  ["Jalan Berlubang","arya","sdkdsk"],
  ["Jalan Berlubang","arya","sdkdsk"],
  ["Jalan Berlubang","arya","sdkdsk"],
];


class ProgressWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: Column(
              children: [
                new ListTile(
                  title: Text(listData[index][0].toString()),
                  subtitle: Text(listData[index][1].toString()),

                  onTap: () {

                  },
                ),
                Padding(padding: EdgeInsets.all(10),child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chip(
                      backgroundColor : Colors.lightBlue,
                      avatar: CircleAvatar(

                        child: Icon(Icons.check),
                      ),
                        label: Text('Approved'),
                    )
                  ],
                ),)
              ],
            ),
          );
        },
      )
    );
  }
}
