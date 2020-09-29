import 'package:flutter/material.dart';
import 'package:Testapp/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Testapp/screens/home.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase/firebase.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'Widget/bezierContainer.dart';

class LoginPage extends StatefulWidget {
  // LoginPage({Key key, this.title}) : super(key: key);

  // final String title;
  // GoogleSignIn googleSignIn = GoogleSignIn();
  // FirebaseAuth auth;
  // bool isUserSignedIn = false;

  // Future<FirebaseUser> signUp(email, password) async {
  //   try {
  //     FirebaseUser user = await auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     assert(user != null);
  //     assert(await user.getIdToken() != null);
  //     return user;
  //   } catch (e) {
  //     handleError(e);
  //     return null;
  //   }
  // }

  // Future<FirebaseUser> googleSignin(BuildContext context) async {
  //   FirebaseUser currentUser;
  //   try {
  //     final GoogleSignInAccount googleUser = await googleSignIn.signIn();
  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser.authentication;
  //     final AuthCredential credential = GoogleAuthProvider.getCredential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );
  //     final FirebaseUser user = await auth.signInWithCredential(credential);
  //     assert(user.email != null);
  //     assert(user.displayName != null);
  //     assert(!user.isAnonymous);
  //     assert(await user.getIdToken() != null);
  //     currentUser = await auth.currentUser();
  //     assert(user.uid == currentUser.uid);
  //     print(currentUser);
  //     print("User Name : ${currentUser.displayName}");
  //   } catch (e) {
  //     // handleError(e);
  //     return currentUser;
  //   }
  // }

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff05e62a), Color(0xff05e62a)])),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _facebookButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1959a9),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: Text('f',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2872ba),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: Text('Log in with Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _googleButton() {
    return GestureDetector(
      onTap: () {
        print("hello");
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe65a45),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('G',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffe86956),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('Log in with Google',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xff05e62a),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "car",
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xff05e62a),
          ),
          children: [
            TextSpan(
              text: 'Zilla',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

// @override
// void initState() {
//    super.initState();   initApp();
// }void initApp() async {
//    FirebaseApp defaultApp = await Firebase.initializeApp();
//    _auth = FirebaseAuth.instanceFor(app: defaultApp);   // immediately check whether the user is signed in
//    checkIfUserIsSignedIn();
// }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                  SizedBox(height: 50),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _submitButton(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  _divider(),
                  _facebookButton(),
                  _googleButton(),
                  SizedBox(height: height * .055),
                  _createAccountLabel(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:Testapp/src/signup.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'package:Testapp/sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'Widget/bezierContainer.dart';

// class LoginPage extends StatefulWidget {
//   LoginPage({Key key, this.title}) : super(key: key);

//   final String title;
//   GoogleSignIn _googleSignIn = GoogleSignIn();
//   FirebaseAuth _auth;
//   bool isUserSignedIn = false;

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// // Future<User> _handleSignIn() async {   // hold the instance of the authenticated user
// //    User user;   // flag to check whether we're signed in already
// //    bool isSignedIn = await _googleSignIn.isSignedIn();   setState(() {
// //       isUserSignedIn = userSignedIn;
// //    });   if (isSignedIn) {
// //       // if so, return the current user
// //       user = _auth.currentUser;
// //    }   else {
// //       final GoogleSignInAccount googleUser =
// //          await _googleSignIn.signIn();      final GoogleSignInAuthentication googleAuth =
// //          await googleUser.authentication;      // get the credentials to (access / id token)
// //       // to sign in via Firebase Authentication
// //       final AuthCredential credential =
// //          GoogleAuthProvider.getCredential(
// //             accessToken: googleAuth.accessToken,
// //             idToken: googleAuth.idToken
// //          );      user = (await _auth.signInWithCredential(credential)).user;
// //       userSignedIn = await _googleSignIn.isSignedIn();
// //       setState(() {
// //          isUserSignedIn = userSignedIn;
// //       });
// //    }

// //    return user;
// // }

// class _LoginPageState extends State<LoginPage> {
//   Widget _backButton() {
//     return InkWell(
//       onTap: () {
//         Navigator.pop(context);
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
//               child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
//             ),
//             Text('Back',
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
//           ],
//         ),
//       ),
//     );
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
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.symmetric(vertical: 15),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//           boxShadow: <BoxShadow>[
//             BoxShadow(
//                 color: Colors.grey.shade200,
//                 offset: Offset(2, 4),
//                 blurRadius: 5,
//                 spreadRadius: 2)
//           ],
//           gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//               colors: [Color(0xff05e62a), Color(0xff05e62a)])),
//       child: Text(
//         'Login',
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }

//   Widget _divider() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: <Widget>[
//           SizedBox(
//             width: 20,
//           ),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Divider(
//                 thickness: 1,
//               ),
//             ),
//           ),
//           Text('or'),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Divider(
//                 thickness: 1,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _facebookButton() {
//     return Container(
//       height: 50,
//       margin: EdgeInsets.symmetric(vertical: 20),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Color(0xff1959a9),
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(5),
//                     topLeft: Radius.circular(5)),
//               ),
//               alignment: Alignment.center,
//               child: Text('f',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                       fontWeight: FontWeight.w400)),
//             ),
//           ),
//           Expanded(
//             flex: 5,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Color(0xff2872ba),
//                 borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(5),
//                     topRight: Radius.circular(5)),
//               ),
//               alignment: Alignment.center,
//               child: Text('Log in with Facebook',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _googleButton() {
//     return Container(
//       height: 50,
//       margin: EdgeInsets.symmetric(vertical: 20),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Color(0xffe65a45),
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(5),
//                     topLeft: Radius.circular(5)),
//               ),
//               alignment: Alignment.center,
//               child: Text('G',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                       fontWeight: FontWeight.w400)),
//             ),
//           ),
//           Expanded(
//             flex: 5,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Color(0xffe86956),
//                 borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(5),
//                     topRight: Radius.circular(5)),
//               ),
//               alignment: Alignment.center,
//               child: Text('Log in with Google',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _createAccountLabel() {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => SignUpPage()));
//       },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 20),
//         padding: EdgeInsets.all(15),
//         alignment: Alignment.bottomCenter,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Don\'t have an account ?',
//               style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Text(
//               'Register',
//               style: TextStyle(
//                   color: Color(0xff05e62a),
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _title() {
//     return RichText(
//       textAlign: TextAlign.center,
//       text: TextSpan(
//           text: "car",
//           style: GoogleFonts.portLligatSans(
//             textStyle: Theme.of(context).textTheme.display1,
//             fontSize: 30,
//             fontWeight: FontWeight.w700,
//             color: Color(0xff05e62a),
//           ),
//           children: [
//             TextSpan(
//               text: 'Zilla',
//               style: TextStyle(color: Colors.black, fontSize: 30),
//             ),
//           ]),
//     );
//   }

//   Widget _emailPasswordWidget() {
//     return Column(
//       children: <Widget>[
//         _entryField("Email id"),
//         _entryField("Password", isPassword: true),
//       ],
//     );
//   }

// // @override
// // void initState() {
// //    super.initState();   initApp();
// // }void initApp() async {
// //    FirebaseApp defaultApp = await Firebase.initializeApp();
// //    _auth = FirebaseAuth.instanceFor(app: defaultApp);   // immediately check whether the user is signed in
// //    checkIfUserIsSignedIn();
// // }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return Scaffold(
//         body: Container(
//       height: height,
//       child: Stack(
//         children: <Widget>[
//           Positioned(
//               top: -height * .15,
//               right: -MediaQuery.of(context).size.width * .4,
//               child: BezierContainer()),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(height: height * .2),
//                   _title(),
//                   SizedBox(height: 50),
//                   _emailPasswordWidget(),
//                   SizedBox(height: 20),
//                   _submitButton(),
//                   Container(
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     alignment: Alignment.centerRight,
//                     child: Text('Forgot Password ?',
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.w500)),
//                   ),
//                   _divider(),
//                   _facebookButton(),
//                   _googleButton(),
//                   SizedBox(height: height * .055),
//                   _createAccountLabel(),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(top: 40, left: 0, child: _backButton()),
//         ],
//       ),
//     ));
//   }
// }
