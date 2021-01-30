import 'package:bookproject3/Pages/specificAuthor.dart';
import 'package:flutter/material.dart';

class Author extends StatefulWidget {
  static String tag = 'author-page';

  @override
  _AuthorState createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  List<Color> colorList = [
    // Color(0xFF33BBFF),
    // Color(0xFF60a0d7),
    // Color(0xFFD580FF),
    // Color(0xFFee528c),
    // Color(0xFFFF8C19),
    // Color(0xFF5fa0d6),
    // Color(0xFF9933FF),
    // Color(0xFF8bccd6),
    // Color(0xFF457DFF),
    // Color(0xFFfc9f6a),
    // Color(0xFF990066),
    // Color(0xFF7232f2),
    // Color(0xFFc876ff),
    // Color(0xFF600538),
    // Color(0xFFe83b36),
    // Color(0xFFff8606),
    // Color(0xFF460a40),
    // Color(0xFFffcc67),
    // Color(0xFFfb9072),
    // Color(0xFFe27b77),
    // Color(0xFFfa9c8e),
    // Color(0xFFadbccd),
    // Color(0xFFf8dfc9),
    // Color(0xFFbbb0c3),
    // Color(0xFF7482b3),
    // Color(0xFF9cbabf),
    // Color(0xFFfceed5),
    // Color(0xFFbac2ff),
    // Color(0xFFe2c6ff),
    // Color(0xFFfedda1),
    // Color(0xFF7dcbfe),
    // Color(0xFF4fb595),
    // Color(0xFF56bab7),
    // Color(0xFF3376a5),
    // Color(0xFF607186),
    // Color(0xFFd7dbdb),
    // Color(0xFF1fa4bc),
    // Color(0xFFaf64fe),
    // Color(0xFF6f61fe),
    // Color(0xFFfecd6e),
    // Color(0xFF102f54),
    // Color(0xFF6e9c80),
    // Color(0xFFffedd5),
    // Color(0xFFa15579),
    // Color(0xFFfad270),
    // Color(0xFFcb7459),
    // Color(0xFFaacacf),
    // Color(0xFF7381a7),
    // Color(0xFF9f7c6e),
    // Color(0xFFc4b0ce),
    // Color(0xFF7b3658),
    // Color(0xFF664c81),
    // Color(0xFFb1c8c2),
    // Color(0xFFe36d74),

    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
    Color(0xFFAFDDE4),
    Color(0xFFA7DBCB),
  ];

  List<String> authorList = [
    'Rachel Caine',
    'Jack Cheng',
    'Rachael Lippincott',
    'Yuval Noah Harari',
    'George R. R. Martin',
    'Ben Shapiro',
    'Kelly Harms',
    'Courtney Peppernell',
    'Mario Puzo',
    'Brian Panowich',
    'Jared Halpern',
    'Ronald E. Wadpole',
    'B. L. van der Waerden',
    'Giuliano Preparata',
    'Matthew Mathias',
    'Jon Skeet',
    'Paul Blanchard',
    'Neil Gaiman',
    'Terese Driscoll',
    'Debbie Herbert',
    'Mary Burton',
    'Angie Thomas',
    'Amil Dinsio',
    'Nick Bilton',
    'Ioan Grillo',
    'Atticus Poetry',
    'Edgar Allan Poe',
    'Martin Heidegger',
    'Sylvia Plath',
    'H. P. Lovecraft',
    'Anthony Burgess',
    'Stephen Hawking',
    'Winston Churchill',
    'Hervé This',
    'Oliver Pötzsch',
    'Alex Michaelides',
    'Christina McDonald',
    'Megan Collins',
    'Christine Riccio',
    'Rainbow Rowell',
    'Jenny Han',
    'Jennifer Niven',
    'Kathleen Glasgow',
    'Ray Bradbury',
    'A. G. Riddle',
    'Blake Crouch',
    'Ernest Cline'
  ];

  void sortAuthor() {
    authorList.sort();
    setState(() {
      _AuthorState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xFF18D191)),
          title: const Text(
            "Author",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.sort_by_alpha),
              onPressed: sortAuthor,
            )
          ],
        ),
        body: Container(
          child: Container(
            child: ListView.builder(
              itemBuilder: (_, int i) => ItemCard(
                  this.authorList[i], this.colorList[i], this.colorList[i + 1]),
              itemCount: this.authorList.length,
            ),
          ),
        ));
  }
}

class ItemCard extends StatelessWidget {
  final cardauthor;
  final color;
  final color2;
  ItemCard(this.cardauthor, this.color, this.color2);
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
                cardauthor,
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
                builder: (context) => SpecificAuthor(author: cardauthor)));
      },
    );
  }
}
