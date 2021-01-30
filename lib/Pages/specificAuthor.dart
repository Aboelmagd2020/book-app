import 'package:bookproject3/Books/book.dart';
import 'package:bookproject3/Books/details.dart';
import 'package:flutter/material.dart';

class SpecificAuthor extends StatelessWidget {
  const SpecificAuthor({@required this.author});
  final String author;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xFF18D191)),
          title: Text(
            author.toString(),
            style: TextStyle(color: Colors.black),
          ),
        ),
      body: AuthorBooks(author),
    );
  }
}

class AuthorBooks extends StatelessWidget {
  AuthorBooks(this.author);
  final String author;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: booklist.books.length,
            itemBuilder: (BuildContext context, int i) {
              String title = booklist.books[i].title.length > 28
                  ? booklist.books[i].title.substring(0, 26) + ".."
                  : booklist.books[i].title;
              if (booklist.books[i].author == author && (booklist.books[i].show || booklist.books[i].show != true)) {
                return ShowGenre(
                  bookCoverImg: booklist.books[i].img,
                  author: booklist.books[i].author,
                  title: title,
                  bookObject: booklist.books[i],
                  index: booklist.books[i].index,
                  genre: booklist.books[i].genre,
                  saved: booklist.books[i].saved,
                );
              } else {
                return Container();
              }
            }));
  }
}

class ShowGenre extends StatefulWidget {
  final String genre;
  final String bookCoverImg;
  final String author;
  final String title;
  final bool saved;
  final int index;
  final Book bookObject;

  const ShowGenre({Key key,@required this.saved, @required this.author, @required this.bookCoverImg, @required this.bookObject, @required this.index, @required this.title, @required this.genre}): super(key: key);
  @override
  _ShowGenreState createState() => _ShowGenreState();
}

class _ShowGenreState extends State<ShowGenre> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Detail(book: widget.bookObject, index: widget.index)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 65,
                      height: 100,
                      color: Colors.green,
                      child: Image(
                        image: AssetImage(widget.bookCoverImg),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                      height: 2.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.title, //BookTitle
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          widget.author, //BookAuthor
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          widget.genre, //BookGenre
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ],
                    ),
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