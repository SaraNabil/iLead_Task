import 'package:flutter/material.dart';
import './componants/property_widget.dart';
import './componants/serach_widget.dart';
import 'componants/slider_widget.dart';
import 'componants/toolbar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UGP',
      theme:
          ThemeData(primaryColor: Colors.white, accentColor: Colors.cyan[800]),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ToolBarWidget(),
              SearchWidget(),
              SizedBox(
                height: height * 0.01,
              ),
              SliderWidget(),
              SizedBox(
                height: height * 0.01,
              ),
              Expanded(child: PropertyWidget()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Post Ad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'My Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
