import 'package:flutter/material.dart';
import 'package:programming_resources/models/itemlist.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubRepos extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<GithubRepos>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: new Text('Useful Github Repositories',
              style: TextStyle(color:Colors.white)),
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
            itemCount: github['Useful Github Repositories']['items'].length,
            itemBuilder: (context, index) {
            return new Container(
              child: new Column(children: <Widget> [
                      ListTile(
                        title: Text(github['Useful Github Repositories']['items'][index]),
                        subtitle: Text(github['Useful Github Repositories']['subtitle'][index]),
                        onTap: () {
                          launch(github['Useful Github Repositories']['links'][index]);
                        },
                      ),
                        SizedBox(height:5),
                      ],
                    ),
                  );
            },
          ),
      );
  }
}