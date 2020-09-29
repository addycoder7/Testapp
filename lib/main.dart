import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime _selectedDate;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          focusNode: AlwaysDisabledFocusNode(),
          controller: _textEditingController,
          onTap: () {
            _selectDate(context);
          },
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                surface: Colors.blueGrey,
                onSurface: Colors.yellow,
              ),
              dialogBackgroundColor: Colors.blue[500],
            ),
            child: child,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text('Pick Image From Camera & Gallery')),
//             body: Center(child: MyImagePicker())));
//   }
// }

// class MyImagePicker extends StatefulWidget {
//   @override
//   MyImagePickerState createState() => MyImagePickerState();
// }

// class MyImagePickerState extends State {
//   File imageURI;

//   Future getImageFromCamera() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.camera);

//     setState(() {
//       imageURI = image;
//     });
//   }

//   Future getImageFromGallery() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       imageURI = image;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//           imageURI == null
//               ? Text('No image selected.')
//               : Image.file(imageURI,
//                   width: 300, height: 200, fit: BoxFit.cover),
//           Container(
//               margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
//               child: RaisedButton(
//                 onPressed: () => getImageFromCamera(),
//                 child: Text('Click Here To Select Image From Camera'),
//                 textColor: Colors.white,
//                 color: Colors.green,
//                 padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//               )),
//           Container(
//               margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//               child: RaisedButton(
//                 onPressed: () => getImageFromGallery(),
//                 child: Text('Click Here To Select Image From Gallery'),
//                 textColor: Colors.white,
//                 color: Colors.green,
//                 padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//               ))
//         ])));
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';

// // import 'src/loginPage.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     final textTheme = Theme.of(context).textTheme;
// //     return MaterialApp(
// //       title: 'CarZilla',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
// //           bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
// //         ),
// //       ),
// //       debugShowCheckedModeBanner: false,
// //       home: LoginPage(),
// //     );
// //   }
// // }
