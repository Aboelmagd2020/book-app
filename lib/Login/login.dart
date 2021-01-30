// import 'package:bookproject/Login/register.dart';
import 'package:bookproject3/home.dart';
import 'package:bookproject3/utils/auth.dart';
import 'package:bookproject3/utils/authprovider.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({this.onSignedIn});
  final VoidCallback onSignedIn;
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String _email, _password;
    // bool isLoading = false;
    
    // bool onDarkMode;
    // var brightness = MediaQuery.of(context).platformBrightness;
    // if (brightness == Brightness.dark) {
    //   onDarkMode = true;
    // } else {
    //   onDarkMode = false;
    // }

    Future<void> signIn() async {
      final formState = _formKey.currentState;
      var auth = AuthProvider.of(context).auth;
      if(formState.validate()) {
        formState.save();
        try {
          auth.signInWithEmailAndPassword(_email, _password);
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          widget.onSignedIn;
        } catch(e) {
          print(e.message);
        }
      }
    }

    void _onLoading() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Stack(
            children: [
              new Opacity(
                opacity: 0.3,
                child: const ModalBarrier(dismissible: false, color: Colors.grey),
              ),
              new Center(
                child: new CircularProgressIndicator(),
              ),
            ],
          );
        },
      );
      new Future.delayed(new Duration(seconds: 3), () {
        Navigator.pop(context); //pop dialog
        signIn();
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Center(
          child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Library.png")
              )
              ),
            ),
            SizedBox(height: 48.0),
            TextFormField(
              validator: (input) {
                if(input.isEmpty){
                  return ('Provide an email');
                }
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              initialValue: null,
              decoration: InputDecoration(
                hintText: 'E-mail',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: (onDarkMode ? Colors.orange : ""))),
              ),
              onSaved: (input) => _email = input,
            ),
            SizedBox(height: 8.0),
            TextFormField(
              validator: (input) {
                if(input.isEmpty){
                  return 'Please fill password';
                }
              },
              autofocus: false,
              initialValue: null,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.00)),
                // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: (onDarkMode ? Colors.orange : ""))),
              ),
              onSaved: (input) => _password = input,
            ),
            SizedBox(height: 24.0),
            Padding( 
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: _onLoading,
                padding: EdgeInsets.all(12),
                color: Color(0xFF18D191),
                child: Text('Log In'),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}

