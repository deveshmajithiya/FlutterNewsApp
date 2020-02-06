import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_news_app/NewsCategories/LatestNews.dart';
import 'package:my_news_app/NewsCategories/SportsNews.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
        
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poynter',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'New App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
            child: Text(widget.title, style: TextStyle(color: Colors.black)),
          ),
          bottom: TabBar(
            indicatorColor : Colors.white,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  "Latest",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize : 14,
                  )
                ),
              ),
              Tab(
                child: Text(
                  "Sports",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize : 14,
                  )
                ),
              ),
              Tab(
                child: Text(
                  "Tech",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize : 14,
                  )
                ),
              ),
              Tab(
                child: Text(
                  "Business",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize : 12,
                  )
                ),
              ),
              Tab(
                child: Text(
                  "Health",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize : 14,
                  )
                ),
              ),
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: TabBarView(
            children: [
              LatestNews(),
              SportsNews(),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),

        drawer: Drawer(),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Categories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black87,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
