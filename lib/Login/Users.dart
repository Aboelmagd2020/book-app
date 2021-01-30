// import 'package:bookproject/Books/book.dart';
import 'package:meta/meta.dart';

// BookList booklist = BookList(books: []);
UserList userlist = UserList(users: [
  User(
    name: "Mulyadi Dharmawan",
    username: "1772028",
    password: "1772028",
  ),
  User(
    name: "Ignatius Giovan",
    username: "1772003",
    password: "1772003",
  ),
  User(
    name: "Joshua Suherlan",
    username: "1772013",
    password: "1772013",
  ),
  User(
    name: "Bramv Bilsen",
    username: "1772999",
    password: "1772999",
    
  )
]);

class UserList {
  List<User> users;

  UserList({
    @required this.users,
  });
}

class User {
  String name;
  String username;
  String password;

  User(
      {@required this.name,
      @required this.username,
      @required this.password,
      });
}