import 'package:bookproject3/Books/book.dart';
import 'package:bookproject3/Books/rating.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';

class Detail extends StatefulWidget {
  static List<int> SavedBooks = new List();
  final Book book;
  // final bool saved;
  final int index;
  static String tag = 'book-detail';
  static List<Icon> iconImage = [
    Icon(Icons.save_alt),
    Icon(Icons.delete_forever)
  ];

  const Detail(
      {Key key,
      @required this.book,
      @required this.index,
      // @required this.saved
      })
      : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  void initState() {
    super.initState();
    if (widget.book.saved == false) {
      _icon = 0;
    } else {
      _icon = 1;
    }
  }
  int _icon;
  @override
  
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Color(0xFF18D191)),
      actions: <Widget>[
        IconButton(
            icon: Detail.iconImage[_icon],
            onPressed: () {
              setState(() {
                if (Detail.iconImage[_icon].icon == Icons.save_alt) {
                  _icon = 1;
                  Detail.SavedBooks.add(widget.index);
                  widget.book.saved = true;
                } else {
                  _icon = 0;
                  Detail.SavedBooks.removeWhere(
                      (item) => item == widget.book.index);
                  Fluttertoast.showToast(
                    msg: widget.book.title + ' has been removed',
                    gravity: ToastGravity.BOTTOM,
                  );
                  widget.book.saved = false;
                }
              });
            }),
      ],
    );

    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: widget.book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.cyan.shade50,
              child: Image(
                image: AssetImage(widget.book.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text(
          '${widget.book.pages} pages',
          color: Colors.black38,
          size: 12.0,
        ),
      ],
    );

    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(
          widget.book.title,
          size: 17.0,
          isBold: true,
          padding: EdgeInsets.only(top: 16.0),
        ),
        text(
          'by ${widget.book.author}',
          color: Colors.black54,
          size: 12.0,
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        ),
        Row(
          children: <Widget>[
            Rating(rating: widget.book.rating),
          ],
        ),
        SizedBox(height: 32.0),
        Container(
          width: 120.0,
          child: Padding( 
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            PdfViewer.loadAsset('assets/${widget.book.pdf}');
            },
          // padding: EdgeInsets.all(12),
          color: Color(0xFF18D191),
          child: Text('Read', style: TextStyle(color: Colors.white)),
      ),
    ),
        )
      ],
    );

    final topContent = Container(
      color: Colors.white70,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    final bottomContent = Container(
      height: 300.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          widget.book.desc,
          style: TextStyle(
            fontSize: 13.0,
            height: 1.5,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          topContent,
          Divider(
            color: Colors.black,
            height: 1,
          ),
          bottomContent
        ],
      ),
    );
  }

  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
            color: color,
            fontSize: size.toDouble(),
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      );
}