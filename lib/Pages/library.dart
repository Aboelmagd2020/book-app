import 'package:bookproject3/Books/book.dart';
import 'package:bookproject3/Books/details.dart';
import 'package:bookproject3/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Library extends StatefulWidget {
  static String tag = 'library-page';
  // const Library({Key key, this.user}) : super(key: key);
  // final FirebaseUser user;
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
        title: const Text(
          "Your Library",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.sort_by_alpha),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: () {},
          // )
        ],
      ),
      drawer: Profile(),
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: LibBooks(),
      ),
    );
  }
}

Future<bool> _onWillPop() {
  SystemNavigator.pop();
}


class LibBooks extends StatefulWidget {
  @override
  _LibBooksState createState() => _LibBooksState();
}

class _LibBooksState extends State<LibBooks> {

  List<int> temp = new List<int>();
  // Book buku = new Book();
  // int ind = 0;
  bool saved;
  @override
  void initState() {
    super.initState();
    temp = Detail.SavedBooks;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: temp.length,
            itemBuilder: (BuildContext context, int i) {
              String title = booklist.books[temp[i]].title;
              if (temp.isEmpty) {
                return Container();
              } else {
                if (temp.contains(temp)) {
                  return Container();
                }
                else {
                  return Dismissible(
                    child: ShowLibBooks(
                      bookCoverImg: booklist.books[temp[i]].img,
                      author: booklist.books[temp[i]].author,
                      title: title,
                      index: booklist.books[temp[i]].index,
                      saved: booklist.books[temp[i]].saved,
                      bookObject: booklist.books[temp[i]],
                    ),
                    onDismissed: (direction) {
                      booklist.books[temp[i]].saved = false;
                      setState(() {
                       temp.removeAt(i);
                      }
                      );
                    },
                    key: Key(temp.toString())
                  );
                }
              }
            }
            )
          );
  }
}

class ShowLibBooks extends StatefulWidget {
  final String bookCoverImg;
  final String author;
  final String title;
  final int index;
  final bool saved;
  final Book bookObject;

  const ShowLibBooks(
      {Key key,
      this.saved,
      this.author,
      this.bookCoverImg,
      this.bookObject,
      this.index,
      this.title})
      : super(key: key);

  @override
  _ShowLibBooksState createState() => _ShowLibBooksState();
}

class _ShowLibBooksState extends State<ShowLibBooks> {
  List<int> temp = new List<int>();
  Book buku = new Book();
  String coverImg ="";
  @override
  void initState() {
    super.initState();
    temp = Detail.SavedBooks;
    buku = widget.bookObject;
    coverImg = widget.bookCoverImg;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detail(
                      book: widget.bookObject,
                      index: widget.index,
                      // saved: widget.saved,
                    )));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 100,
                      color: Colors.green,
                      child: Image(
                        image: AssetImage(coverImg),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                      height: 2.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            child: Text(
                              buku.title, //BookTitle
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15.0),
                            ),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            buku.author, //BookAuthor
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26.5),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 22.5),
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                                // temp.remove(widget.bookObject);
                                temp.removeWhere(
                                    (item) => item == buku.index);
                                Fluttertoast.showToast(
                                  msg: buku.title +
                                      ' has been removed',
                                  gravity: ToastGravity.BOTTOM,
                                );
                                widget.bookObject.saved = false;
                            },
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
