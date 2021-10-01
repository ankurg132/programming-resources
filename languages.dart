import 'package:flutter/material.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import './insidelanguages.dart';

class Languages extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Languages>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  final items = ['1. C / C++', '2. Python ', '3. Java', '4. Ruby'];
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
            onPressed: () =>
                {/*listClassClick(context)*/}, //aboutusClick(context),
            child: Text(
              'About Us',
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple.shade700,
                fontWeight: FontWeight.bold,
              ),
            )),
        TextButton(
            onPressed: () => {}, //contributeClick(context),
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
          title: new Text('Programming Languages',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple.shade700,
          /*leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                _controller.toggle();
              },
            ),*/
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
                    MaterialPageRoute(builder: (context) => Cpp()),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Python()),
                  );
                }
              },
            ));
          },
        ),
      ),
    );
  }
}
