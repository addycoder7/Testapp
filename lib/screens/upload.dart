import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Color(0xff476cfb),
                      child: ClipOval(
                        child: new SizedBox(
                          width: 180.0,
                          height: 180.0,
                          child: (_image != null)
                              ? Image.file(
                                  _image,
                                  fit: BoxFit.fill,
                                )
                              : Image.network(
                                  "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                                  fit: BoxFit.fill,
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.camera,
                        size: 30.0,
                      ),
                      onPressed: () {
                        getImage();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Email',
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 18.0)),
                    SizedBox(width: 20.0),
                    Text('michelle123@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Color(0xff476cfb),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                  RaisedButton(
                    color: Color(0xff476cfb),
                    onPressed: () {},
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:Testapp/src/Widget/bezierContainer.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:async';
// import 'dart:io';

// class Upload extends StatefulWidget {
//   Upload({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _UploadState createState() => _UploadState();
// }

// class _UploadState extends State<Upload> {
//   File _image;

//   Future getImage() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       _image = image;
//       print('Image Path $_image');
//     });
//   }

//   Widget _entryField(String title, {bool isPassword = false}) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             title,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           TextField(
//               obscureText: isPassword,
//               decoration: InputDecoration(
//                   border: InputBorder.none,
//                   fillColor: Color(0xfff3f3f4),
//                   filled: true))
//         ],
//       ),
//     );
//   }

//   Widget _submitButton() {
//     return InkWell(
//       onTap: () {
//         showDatePicker(
//           context: context,
//           initialDate: DateTime.now(),
//           firstDate: DateTime(2015, 8),
//           lastDate: DateTime(2101),
//         );
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.symmetric(vertical: 15),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(5)),
//             boxShadow: <BoxShadow>[
//               BoxShadow(
//                   color: Colors.grey.shade200,
//                   offset: Offset(2, 4),
//                   blurRadius: 5,
//                   spreadRadius: 2)
//             ],
//             gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [Color(0xff05e62a), Color(0xff05e62a)])),
//         child: Text(
//           'Upload Details',
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       ),
//     );
//   }

//   Widget _emailPasswordWidget() {
//     return Column(
//       children: <Widget>[
//         _entryField("Full Name"),
//         _entryField("Email id"),
//         _entryField("Mobile Number"),
//         _entryField("Password", isPassword: true),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         height: height,
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               top: -MediaQuery.of(context).size.height * .15,
//               right: -MediaQuery.of(context).size.width * .4,
//               child: BezierContainer(),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(height: height * .2),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     _emailPasswordWidget(),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     _submitButton(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
