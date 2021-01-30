import 'package:bookproject3/Login/login.dart';
import 'package:bookproject3/utils/auth.dart';
import 'package:bookproject3/utils/authprovider.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String tag = 'profile-page';
  // const Profile({Key key, this.user}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

  Future<void> signOut(BuildContext context) async {
    final BaseAuth auth = AuthProvider.of(context).auth;
    try {
      await auth.signOut();
      Navigator.of(context).pushNamed(LoginPage.tag);
    } catch (e){
      print(e);
    }
  }
    
    return Drawer(
      child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text(""),
              accountName: new Text(""),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage('assets/BV2.jpg'),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: AssetImage('assets/BV.jpg'),
                  ),
                  // Switch account
                  onTap: () {},
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage('assets/Background.jpg'),
                  fit: BoxFit.fill
                )
              ),
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("First Page")));
              }
            ),
            new ListTile(
              title: new Text("Info"),
              trailing: new Icon(Icons.info),
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Second Page")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.cancel),
              onTap: () => signOut(context),
            ),
          ],
        ),
    );
  }
}