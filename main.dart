import 'package:flutter/material.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import './about.dart';
import './languages.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming Resources',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Programming Resouces'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  final items = [
    '1. Programming Languages',
    '2. Web Development ',
    '3. Machine Learning',
    '4. App development',
    '5. Cloud computing'
  ];
  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 200))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FancyDrawerWrapper(
      backgroundColor: Colors.white,
      controller: _controller,
      drawerItems: <Widget>[
        TextButton(
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  )
                }, //aboutusClick(context),
            child: Text(
              'About Us',
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            )),
        TextButton(
            onPressed: () => {
                  launch(
                      'https://docs.google.com/forms/d/e/1FAIpQLSdrx4E78wM_RZ67szoqta_DvJ-J8629gMta4j16V0PRe0jxXQ/viewform?usp=sf_link')
                }, //contributeClick(context),
            child: Text(
              'Contribute',
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: new Text('Programming Resources',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple.shade700,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              _controller.toggle();
            },
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              //                           <-- Card
              child: ListTile(
                title: Text(items[index]),
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Languages()),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
