import 'package:flutter/material.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Cpp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Cpp>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  final items = ['1. CPlusPlus.com Tutorials', '2. LearnCPP.com Tutorials ', '3. Open Data Structure in C++']; 
  final subtitle = ['','','- Pat Morin'];
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
          TextButton(onPressed: () => {/*listClassClick(context)*/},//aboutusClick(context), 
            child: Text('About Us',
              style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),)
          ),TextButton(onPressed: () => {},//contributeClick(context), 
            child: Text('Contribute',
              style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),))
            ,
        ],
        child: Scaffold(
          appBar: AppBar(
            title: new Text('C / C++ Resources',
              style: TextStyle(color:Colors.white)),
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
            return new Container(
              child: new Column(children: <Widget> [
                      ListTile(
                        title: Text(items[index]),
                        subtitle: Text(subtitle[index]),
                        onTap: () {
                          if(index==0)launch('http://www.cplusplus.com/doc/tutorial/');
                                        else if(index==1)launch('https://www.learncpp.com');
                                        else if(index==2)launch('http://opendatastructures.org/ods-cpp.pdf');}
                      ),
                        /*InkWell(
                          child: new Text('Open Link in Browser'),
                          onTap: () => {if(index==0)launch('http://www.cplusplus.com/doc/tutorial/')
                                        else if(index==1)launch('https://www.learncpp.com')
                                        else if(index==2)launch('http://opendatastructures.org/ods-cpp.pdf')}
                        ),*/
                        SizedBox(height:5),
                      ],
                    ),
                  );
            },
          ),
        ),
      );
  }
}

/////////////////////////////////////

class Python extends StatefulWidget {
  @override
  _PythonState createState() => _PythonState();
}

class _PythonState extends State<Python>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  final items = ['1. Py4e.com Tutorials', '2. Automate the boring stuff with Python ', '3. Python 101']; 
  final subtitle = ['','','- Michael Driscoll'];
  final links = ['https://py4e.com',];
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
          TextButton(onPressed: () => {/*listClassClick(context)*/},//aboutusClick(context), 
            child: Text('About Us',
              style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),)
          ),TextButton(onPressed: () => {},//contributeClick(context), 
            child: Text('Contribute',
              style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),))
            ,
        ],
        child: Scaffold(
          appBar: AppBar(
            title: new Text('Python Resources',
              style: TextStyle(color:Colors.white)),
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
            return new Container(
              child: new Column(children: <Widget> [
                      ListTile(
                        title: Text(items[index]),
                        subtitle: Text(subtitle[index]),
                        onTap: () {
                          if(index==0)launch(links[index]);
                                        else if(index==1)launch('https://automatetheboringstuff.com/2e/chapter0/');
                                        else if(index==2)launch('https://python101.pythonlibrary.org');}
                      ),
                        /*InkWell(
                          child: new Text('Open Link in Browser'),
                          onTap: () => {if(index==0)launch('http://www.cplusplus.com/doc/tutorial/')
                                        else if(index==1)launch('https://www.learncpp.com')
                                        else if(index==2)launch('http://opendatastructures.org/ods-cpp.pdf')}
                        ),*/
                        SizedBox(height:5),
                      ],
                    ),
                  );
            },
          ),
        ),
      );
  }
}


