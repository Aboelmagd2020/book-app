import 'package:bookproject3/Books/book.dart';
import 'package:bookproject3/Books/details.dart';
import 'package:bookproject3/Pages/collection.dart';
import 'package:bookproject3/Pages/library.dart';
import 'package:bookproject3/Pages/search.dart';
//import 'package:firebase_auth/firebase_auth.dart';
// import 'package:bookproject2/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:bookproject3/Pages/genre.dart';
import 'Pages/author.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  const HomePage({Key key, onSignedOut});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _searchBar = SearchBar();
  int bottomSelectedIndex = 0;
  List<BottomNavyBarItem> buildBottomNavyBarItems() {
    return [
      BottomNavyBarItem(
        icon: Icon(Icons.apps),
        title: Text('Home'),
        activeColor: Colors.red,
      ),
      BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Author'),
          activeColor: Colors.purpleAccent),
      BottomNavyBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
          activeColor: Colors.pink),
      BottomNavyBarItem(
          icon: Icon(Icons.book),
          title: Text('Library'),
          activeColor: Colors.blue),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        MainContent(),
        Author(),
        Search(),
        Library(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: bottomSelectedIndex,
        showElevation: true,
        onItemSelected: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavyBarItems(),
      ),
      body: buildPageView(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
              ],
            )),
        HorizontalButton(),
        HorizontalListView(),
        HotList(),
        PopList(),
        RecentList(),
      ],
    );
  }
}

class HorizontalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text(
            "Explore",
            style: TextStyle(
                color: ((onDarkMode) ? Colors.orange : Colors.black),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 2.5, bottom: 2.5),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0XFF53CEDB),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                        ),
                        Text('Collection',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(Collection.tag);
                },
              ),
              SizedBox(
                width: 5.0,
              ),
              GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.5, bottom: 2.5),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0XFFFC7B4D),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.book,
                              color: Colors.white,
                            ),
                          ),
                          Text('Genre', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Genre.tag);
                  }),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 2.5, bottom: 2.5),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0XFFdc8f58),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        Text('Author', style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(Author.tag);
                },
              ),
              SizedBox(
                width: 5.0,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Color(0xfff8f8f8), Colors.white],
        ),
        border: Border(bottom: BorderSide(color: Color(0xfff0f0f0), width: 2)),
      ),
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
    );
  }
}

class HotList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Trending",
              style: TextStyle(
                  color: ((onDarkMode) ? Colors.orange : Colors.black),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: booklist.books.length,
              itemBuilder: (BuildContext context, int i) {
                String title = booklist.books[i].title.length > 15
                    ? booklist.books[i].title.substring(0, 12) + ".."
                    : booklist.books[i].title;
                if (booklist.books[i].trending && booklist.books[i].show) {
                  return ShowPopBooks(
                    bookCoverImg: booklist.books[i].img,
                    author: booklist.books[i].author,
                    title: title,
                    bookObject: booklist.books[i],
                    index: booklist.books[i].index,
                    saved: booklist.books[i].saved,
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PopList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Popular",
              style: TextStyle(
                  color: ((onDarkMode) ? Colors.orange : Colors.black),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: booklist.books.length,
              itemBuilder: (BuildContext context, int i) {
                String title = booklist.books[i].title.length > 15
                    ? booklist.books[i].title.substring(0, 12) + ".."
                    : booklist.books[i].title;
                if (booklist.books[i].popular && booklist.books[i].show) {
                  return ShowPopBooks(
                    bookCoverImg: booklist.books[i].img,
                    author: booklist.books[i].author,
                    title: title,
                    bookObject: booklist.books[i],
                    index: booklist.books[i].index,
                    saved: booklist.books[i].saved,
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Saved",
              style: TextStyle(
                  color: ((onDarkMode) ? Colors.orange : Colors.black),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Detail.SavedBooks.length,
              itemBuilder: (BuildContext context, int i) {
                String title =
                    booklist.books[Detail.SavedBooks[i]].title.length > 15
                        ? booklist.books[Detail.SavedBooks[i]].title
                                .substring(0, 12) +
                            ".."
                        : booklist.books[Detail.SavedBooks[i]].title;
                if (Detail.SavedBooks.isEmpty) {
                  return ShowSavedBook(
                      bookCoverImg: booklist.books[Detail.SavedBooks[i]].img,
                      author: booklist.books[Detail.SavedBooks[i]].author,
                      title: title,
                      index: booklist.books[Detail.SavedBooks[i]].index,
                      saved: booklist.books[i].saved,
                      bookObject: booklist.books[Detail.SavedBooks[i]]);
                } else {
                  return ShowSavedBook(
                      bookCoverImg: booklist.books[Detail.SavedBooks[i]].img,
                      author: booklist.books[Detail.SavedBooks[i]].author,
                      title: title,
                      index: booklist.books[Detail.SavedBooks[i]].index,
                      saved: booklist.books[i].saved,
                      bookObject: booklist.books[Detail.SavedBooks[i]]);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ShowBooks extends StatefulWidget {
  final String bookCoverImg;
  final String author;
  final String title;
  final bool saved;
  final int index;
  final Book bookObject;

  const ShowBooks(
      {Key key,
      this.saved,
      this.author,
      this.bookCoverImg,
      this.bookObject,
      this.index,
      this.title})
      : super(key: key);
  @override
  _ShowBooksState createState() => _ShowBooksState();
}

class _ShowBooksState extends State<ShowBooks> {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 140,
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
                  height: 15,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 20,
                      color: (onDarkMode ? Colors.orange : Colors.black87),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  widget.author,
                  style: TextStyle(
                    fontSize: 15,
                    color: ((onDarkMode) ? Colors.orange : Colors.black45),
                    fontWeight: FontWeight.w300,
                  ),
                  softWrap: true,
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

class ShowPopBooks extends StatefulWidget {
  final String bookCoverImg;
  final String author;
  final String title;
  final bool saved;
  final int index;
  final Book bookObject;

  const ShowPopBooks(
      {Key key,
      this.saved,
      this.author,
      this.bookCoverImg,
      this.bookObject,
      this.index,
      this.title})
      : super(key: key);
  @override
  _ShowPopBooksState createState() => _ShowPopBooksState();
}

class _ShowPopBooksState extends State<ShowPopBooks> {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
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
                height: 200,
                width: 140,
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
                height: 15,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 20,
                    color: ((onDarkMode) ? Colors.orange : Colors.black87),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                widget.author,
                style: TextStyle(
                  fontSize: 15,
                  color: ((onDarkMode) ? Colors.orange : Colors.black45),
                  fontWeight: FontWeight.w300,
                ),
                softWrap: true,
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

class ShowSavedBook extends StatefulWidget {
  final String bookCoverImg;
  final String author;
  final String title;
  final bool saved;
  final int index;
  final Book bookObject;

  const ShowSavedBook(
      {Key key,
      this.saved,
      this.author,
      this.bookCoverImg,
      this.bookObject,
      this.index,
      this.title})
      : super(key: key);
  @override
  _ShowSavedBookState createState() => _ShowSavedBookState();
}

class _ShowSavedBookState extends State<ShowSavedBook> {
  @override
  Widget build(BuildContext context) {
    bool onDarkMode;
    var brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      onDarkMode = true;
    } else {
      onDarkMode = false;
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detail(
                      book: widget.bookObject,
                      index: widget.index,
                    )));
      },
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                width: 140,
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
                height: 15,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 20,
                    color: ((onDarkMode) ? Colors.orange : Colors.black87),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                widget.author,
                style: TextStyle(
                  fontSize: 15,
                  color: ((onDarkMode) ? Colors.orange : Colors.black45),
                  fontWeight: FontWeight.w300,
                ),
                softWrap: true,
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

class BottomNavyBar extends StatelessWidget {
  final int selectedIndex;
  final double iconSize;
  final Color backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;

  BottomNavyBar(
      {Key key,
      this.selectedIndex = 0,
      this.showElevation = true,
      this.iconSize = 24,
      this.backgroundColor,
      this.animationDuration = const Duration(milliseconds: 270),
      @required this.items,
      @required this.onItemSelected}) {
    assert(items != null);
    assert(items.length >= 2 && items.length <= 5);
    assert(onItemSelected != null);
  }

  Widget _buildItem(BottomNavyBarItem item, bool isSelected) {
    return AnimatedContainer(
      width: isSelected ? 130 : 50,
      height: double.maxFinite,
      duration: animationDuration,
      padding: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: isSelected ? item.activeColor.withOpacity(0.2) : backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconTheme(
                  data: IconThemeData(
                      size: iconSize,
                      color: isSelected
                          ? item.activeColor.withOpacity(1)
                          : item.inactiveColor == null
                              ? item.activeColor
                              : item.inactiveColor),
                  child: item.icon,
                ),
              ),
              isSelected
                  ? DefaultTextStyle.merge(
                      style: TextStyle(
                          color: item.activeColor, fontWeight: FontWeight.bold),
                      child: item.title,
                    )
                  : SizedBox.shrink()
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = (backgroundColor == null)
        ? Theme.of(context).bottomAppBarColor
        : backgroundColor;

    return Container(
      decoration: BoxDecoration(color: bgColor, boxShadow: [
      ]),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: 56,
          padding: EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () {
                  onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class BottomNavyBarItem {
  final Icon icon;
  final Text title;
  final Color activeColor;
  final Color inactiveColor;

  BottomNavyBarItem(
      {@required this.icon,
      @required this.title,
      this.activeColor = Colors.blue,
      this.inactiveColor}) {
    assert(icon != null);
    assert(title != null);
  }
}
