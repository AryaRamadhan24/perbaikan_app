import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

final listData = [];

class Aduan {
  String judul;
  String detail;
  String pengirim;

  Aduan();

  Map<String, dynamic> toJson() =>
      {'judul': judul, 'detail': detail, 'pengirim': pengirim};

  Aduan.fromJson(Map<String, dynamic> json)
      : judul = json['judul'],
        detail = json['detail'],
        pengirim = json['pengirim'];
}

class ImagePickerView extends StatefulWidget{
  const ImagePickerView({ Key key }) : super(key: key);

  @override
  _ImagePickerViewState createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {
  File _image;
  final picker = ImagePicker();


  Future imgFromCam() async {
    final image = await picker.getImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgFromGallery() async {
    final image = await picker.getImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      imgFromCam();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showPicker(context);

              },
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Color(0xffFDCF09),
                child: _image != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.file(
                    _image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                )
                    : Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AduanForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class DetailAduan extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<AduanForm> {
  final _judulcontroller = TextEditingController();
  final _detailController = TextEditingController();
  final _pengirimController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  File _image;
  final picker = ImagePicker();
  Future imgFromCam() async {
    final image = await picker.getImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgFromGallery() async {
    final image = await picker.getImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      imgFromCam();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  addItem() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    /* preferences.setStringList(key, value); */
  }

  Widget build(BuildContext context) {
    return Column(children: [
      Form(
          key: _formKey,
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _showPicker(context);

                      },
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xffFDCF09),
                        child: _image != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            _image,
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        )
                            : Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          width: 100,
                          height: 100,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: _judulcontroller,
                decoration: InputDecoration(labelText: 'Judul Aduan'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _pengirimController,
                decoration: InputDecoration(labelText: 'Pengirim Aduan'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _detailController,
                decoration: InputDecoration(labelText: 'Detail Aduan'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Tidak Boleh Kosong';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      listData..add([_judulcontroller.text,_pengirimController.text,_detailController.text]);
                      //print(listData);
                    }
                  },
                  child: Text('Kirim'),
                ),
              )
            ],
          ))
    ]);
  }
}

class AduanWidget extends StatelessWidget {


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
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              scrollable: true,
                              title: Text('Detail Aduan'),
                              content: Text(listData[index][2].toString()),
                            ));
                  },
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    scrollable: true,
                    title: Text('Tambah Aduan'),
                    content: AduanForm(),
                  ));
        },
        label: Text("Tambah Aduan"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
