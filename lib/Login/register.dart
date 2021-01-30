// import 'package:flutter/material.dart';
// import 'Users.dart';

// class Register extends StatefulWidget {
//   static String tag = 'register-page';
//   @override
//   _RegisterState createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   String name;
//   String username;
//   String password;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//           child: ListView(
//         shrinkWrap: true,
//         padding: EdgeInsets.only(left: 24.0, right: 24.0),
//         children: <Widget>[
//           TextFormField(
//             keyboardType: TextInputType.emailAddress,
//             autofocus: false,
//             initialValue: null,
//             decoration: InputDecoration(
//               hintText: 'Name',
//               contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//             ),
//           ),
//           SizedBox(height: 48.0),
//           TextFormField(
//             keyboardType: TextInputType.emailAddress,
//             autofocus: false,
//             initialValue: null,
//             decoration: InputDecoration(
//               hintText: 'Username',
//               contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//             ),
//           ),
//           SizedBox(height: 8.0),
//           TextFormField(
//             autofocus: false,
//             initialValue: null,
//             obscureText: true,
//             decoration: InputDecoration(
//               hintText: 'Password',
//               contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//             ),
//           ),
//           SizedBox(height: 24.0),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 16.0),
//             child: RaisedButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(24),
//               ),
//               onPressed: () {
//                 new User(
//                   name: name,
//                   username: username,
//                   password: password,
//                 );
//               },
//               padding: EdgeInsets.all(12),
//               color: Color(0xFF18D191),
//               child: Text('Sign up', style: TextStyle(color: Colors.white)),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
