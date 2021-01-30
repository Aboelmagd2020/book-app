import 'package:bookproject3/Pages/specificGenre.dart';
import 'package:flutter/material.dart';

class Genre extends StatefulWidget {
  static String tag = 'genre-page';

  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  List<Color> colorList = [
    Color(0xFFadbccd),
    Color(0xFFf8dfc9),
    Color(0xFFbbb0c3),
    Color(0xFF7482b3),
    //
    Color(0xFF70bdf2),
    //
    Color(0xFF9cbabf),
    Color(0xFFfceed5),
    //
    Color(0xFFffcc67),
    Color(0xFFfb9072),
    Color(0xFFe27b77),
    Color(0xFFfa9c8e),
    //
    Color(0xFF7232f2),
    Color(0xFFc876ff),
    Color(0xFF600538),
    Color(0xFFe83b36),
    Color(0xFFff8606),
    Color(0xFF460a40)
  ];

  List<String> genreList = [
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
        ),
        body: Container(
          child: Container(
            child: ListView.builder(
              itemBuilder: (_, int i) => ItemCard(
                  this.genreList[i], this.colorList[i], this.colorList[i + 1]),
              itemCount: this.genreList.length,
            ),
          ),
        ));
  }
}

class ItemCard extends StatelessWidget {
  final cardgenre;
  final color;
  final color2;
  ItemCard(
    this.cardgenre,
    this.color,
    this.color2,
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [this.color, this.color2])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                cardgenre,
                style: TextStyle(
                    color: Color(0xFFF7F7F7),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SpecificGenre(genre: cardgenre)));
      },
    );
  }
}
