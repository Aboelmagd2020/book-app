import 'package:bookproject3/Books/book.dart';
import 'package:bookproject3/Books/details.dart';
import 'package:flutter/material.dart';

class SortedCollection extends StatefulWidget {
  final String bookCoverImg;
  final String author;
  final String title;
  final int index;
  final bool saved;
  final Book bookObject;

  const SortedCollection(
      {Key key,
      this.saved,
      this.author,
      this.bookCoverImg,
      this.bookObject,
      this.index,
      this.title})
      : super(key: key);

  @override
  _SortedCollectionState createState() => _SortedCollectionState();
}

class _SortedCollectionState extends State<SortedCollection> {
  List<String> GenreList = [
    'Computing',
    'Crime',
    'Fiction',
    'Historical',
    'Mystery',
    'Poetry',
    'Romance',
    'Sci-Fi',
    'Science',
    'Thriller'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xFF18D191)),
          title: const Text(
            "Genre",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: GenreList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int i) {
              return DisplaySorted(
              );
            },
          ),
        ));
  }
}

class DisplaySorted extends StatelessWidget {
  // BookList _bookList = BookList(books: []);
  @override
  Widget build(BuildContext context) {
    Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height),
                  ),
                  itemCount: booklist.books.length,
                  itemBuilder: (BuildContext context, int i) {
                    String title = booklist.books[i].title;
                    if ((booklist.books[i].show ||
                        booklist.books[i].show != true)) {
                      return GridTile(
                        child: DisplayAll(
                        bookCoverImg: booklist.books[i].img,
                        author: booklist.books[i].author,
                        title: title,
                        bookObject: booklist.books[i],
                        index: booklist.books[i].index,
                        saved: booklist.books[i].saved,
                      ));
                    } else {
                      return Container();
                    }
                  })),
        ],
      ),
    );
  }
}

class DisplayAll extends StatefulWidget {
  final String bookCoverImg;
  final String author;
  final String title;
  final int index;
  final bool saved;
  final Book bookObject;

  const DisplayAll(
      {Key key,
      this.author,
      this.bookCoverImg,
      this.bookObject,
      this.index,
      this.title,
      this.saved})
      : super(key: key);

  @override
  _DisplayAllState createState() => _DisplayAllState();
}

class _DisplayAllState extends State<DisplayAll> {
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
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 220,
                width: 150,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image(
                      image: AssetImage(widget.bookCoverImg),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 100,
                child: Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                width: 100,
                child: Text(
                  widget.author,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                    fontWeight: FontWeight.w300,
                  ),
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
