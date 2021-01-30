import 'package:bookproject3/Books/book.dart';
import 'package:bookproject3/Books/details.dart';
import 'package:bookproject3/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  final Book book;
  final int index;
  final bool saved;
  const Search({Key key, this.book, this.index, this.saved}) : super(key: key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";
  List<String> judul = new List<String>();
  List<String> _filtered = new List<String>();
  List<int> bookindex = new List<int>();
  List<Book> _books = new List<Book>();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text(
    'Search',
    style: TextStyle(color: Colors.black),
  );
  void _insertJudul() {
    List<String> temp = new List<String>();
    for (int i = 0; i < booklist.books.length; i++) {
      temp.add(booklist.books[i].title);
      
    }

    setState(() {
      judul = temp;
      _filtered = judul;
    });
  }

  _SearchState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          _filtered = judul;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }
  @override
  void initState() {
    this._insertJudul();
    super.initState();
    for (int i = 0; i < booklist.books.length; i++) {
      _books.add(booklist.books[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildApp(context),
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: Container(
          child: _buildList(context),
        ),
      ),
    );
  }

Future<bool> _onWillPop() {
  SystemNavigator.pop();
}

  Widget _buildList(BuildContext context) {
    if (!(_searchText.isEmpty)) {
      List<String> temp = new List<String>();

      for (int i = 0; i < _filtered.length; i++) {
        if (_filtered[i].toLowerCase().contains(_searchText.toLowerCase())) {
          temp.add(_filtered[i]);
          bookindex.add(booklist.books[i].index);
        } else {}
      }
      _filtered = temp;
    }
    return ListView.builder(
      itemCount: judul == null ? 0 : _filtered.length,
      itemBuilder: (BuildContext context, int i) {
        if (_searchText.isEmpty) {
          return new Container(
            
          );
        } else {
          return new ListTile(
            title: Text(_filtered[i]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(
                            book: _books[bookindex[i]],
                            index: _books[bookindex[i]].index,
                            // saved: _books[bookindex[i]].saved,
                          )));
            },
          );
        }
      },
    );
  }

  Widget _buildApp(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Color(0xFF18D191)),
      title: _appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: _searchIcon,
          onPressed: _searchPressed,
        )
      ],
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(HomePage.tag);
        },
      ),
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              hintText: 'Search Title',
              hintStyle: TextStyle(color: Colors.black)),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle =
            new Text('Search', style: TextStyle(color: Colors.black));
        _filtered = judul;
        _filter.clear();
      }
    });
  }
}

// class Search extends StatefulWidget {
//   final Book book;
//   const Search({Key key, this.book}) : super(key: key);
//   @override
//   _SearchState createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   final TextEditingController _filter = new TextEditingController();
//   String _searchText = "";
//   List<String> judul = new List<String>();
//   List<String> _filtered = new List<String>();

//   void _insertJudul() {
//     List<String> temp = new List<String>();
//     for (int i = 0; i < booklist.books.length; i++) {
//       temp.add(booklist.books[i].title);
//     }

//     setState(() {
//       judul = temp;
//       _filtered = judul;
//     });
//   }

//   _SearchState() {
//     _filter.addListener(() {
//       if (_filter.text.isEmpty) {
//         setState(() {
//           _searchText = "";
//           _filtered = judul;
//         });
//       } else {
//         setState(() {
//           _searchText = _filter.text;
//         });
//       }
//     });
//   }
//   @override
//   void initState() {
//     this._insertJudul();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     void _pengecekan(String value) {
//       if (!(_searchText.isNotEmpty)) {
//         List<String> temp = new List<String>();
//         for (int i = 0; i < booklist.books.length; i++) {
//           if (_filtered[i].toLowerCase().contains(_searchText.toLowerCase())) {
//             temp.add(_filtered[i]);
//           }
//         }
//         _filtered = temp;
//       }
//     }

//     return ListView(children: <Widget>[
//       Container(
//           padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
//           margin: const EdgeInsets.only(),
//           child: Material(
//               borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
//               elevation: 2.0,
//               child: Container(
//                   height: 45.0,
//                   margin: EdgeInsets.only(left: 16.0, right: 16.0),
//                   child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         Expanded(
//                           child: TextField(
//                             controller: _filter,
//                             onChanged: (value) {
//                               _pengecekan(value);
//                               if (value.isNotEmpty) {
//                                 setState(() {
//                                   Container(
//                                     height: 200,
//                                     child: ListView.builder(
//                                       itemCount: _filter == null
//                                           ? 0
//                                           : _filtered.length,
//                                       itemBuilder:
//                                           (BuildContext context, int index) {
//                                         return new ListTile(
//                                           title: Text(_filtered[index]),
//                                         );
//                                       },
//                                     ),
//                                   );
//                                 });
//                               }
//                             },
//                             maxLines: 1,
//                             decoration: InputDecoration(
//                                 icon: Icon(
//                                   Icons.search,
//                                   color: Color(0xFF18D191),
//                                 ),
//                                 hintText: "Search title",
//                                 border: InputBorder.none),
//                             onTap: () {
//                               setState(() {});
//                             },
//                           ),
//                         ),
//                       ])))),
//     ]);
//   }
// }

// class Search extends StatefulWidget {
//   @override
//   final Book buku;
//   final bool saved;
//   final int index;
//   const Search(
//       {Key key,
//       @required this.buku,
//       @required this.index,
//       @required this.saved})
//       : super(key: key);
//   _SearchState createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   TextEditingController controller = new TextEditingController();
//   bool isSearching ;
//   String _searchText;

//   _SearchState(){
//     controller.addListener((){
//       if (controller.text.isEmpty){
//         setState(() {
//           controller.clear();
//           isSearching = false;
//           _searchText = "";
//         });
//       } else{
//         setState(() {
//          controller.clear();
//          isSearching = true;
//          items = recent;
//         });
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return buildListView(context);
//   }

//   ListView buildListView(BuildContext context) {
//     void filterSearchResult(String ini) {
//       for (int i = 0; i < booklist.books.length; i++) {
//         judul[i] = booklist.books[i].title;
//       }
//       if (ini.isNotEmpty) {
//         for (int i = 0; i<ini.length;i++) {
//           if (ini[i].toLowerCase().contains(judul[i].toLowerCase())) {
//             recent.add(judul[i]);
//           }
//         }
//         setState(() {
//           items.clear();
//           items.addAll(recent);
//         });
//         return;
//       } else {
//         setState(() {
//           items.clear();
//           items = judul;
//         });
//         return;
//       }
//     }
//     return ListView(
//       children: <Widget>[
//         Container(
//             padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
//             margin: const EdgeInsets.only(),
//             child: Material(
//                 borderRadius:
//                     const BorderRadius.all(const Radius.circular(25.0)),
//                 elevation: 2.0,
//                 child: Container(
//                     height: 45.0,
//                     margin: EdgeInsets.only(left: 16.0, right: 16.0),
//                     child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           Expanded(
//                             child: TextField(
//                               controller: controller,
//                               onChanged: (value) {
//                                 value = controller.text;
//                                 filterSearchResult(value);
//                               },
//                               maxLines: 1,
//                               decoration: InputDecoration(
//                                   icon: Icon(
//                                     Icons.search,
//                                     color: Color(0xFF18D191),
//                                   ),
//                                   hintText: "Search title",
//                                   border: InputBorder.none),
//                             ),
//                           ),
//                         ])))),
//       ],
//     );
//   }
// }
