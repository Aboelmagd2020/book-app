import 'package:bookproject3/Login/login.dart';
import 'package:bookproject3/Login/root_page.dart';
import 'package:bookproject3/Pages/author.dart';
import 'package:bookproject3/Pages/collection.dart';
import 'package:bookproject3/Pages/genre.dart';
import 'package:bookproject3/home.dart';
import 'package:bookproject3/utils/authprovider.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    Genre.tag: (context) => Genre(),
    Collection.tag: (context) => Collection(),
    Author.tag: (context) => Author(),
  };
    return AuthProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Roboto',
        ),
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // ),
        routes: routes,
        home: RootPage(),
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        //   hintColor: Colors.orange,
        // ),
    ),
    );
  }
}
