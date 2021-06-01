import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/itemlist.dart';

class ListTitlePage extends StatefulWidget {
  @required
  final int index;
  @required
  final String cname;

  ListTitlePage(this.index, this.cname);
  @override
  _ListTitlePageState createState() => _ListTitlePageState();
}

class _ListTitlePageState extends State<ListTitlePage> {
  Map<String, Map<String, List<String>>> languagelist;
  @override
  void initState() {
    super.initState();
    languagelist = itemlist[widget.cname];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(widget.cname, style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          itemCount: languagelist.keys.length,
          itemBuilder: (context, index) {
            return Card(
              //                           <-- Card
              child: ListTile(
                title: Text((index + 1).toString() +
                    ". " +
                    languagelist.keys.toList()[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondList(
                            index,
                            languagelist.keys.toList()[index].toString(),
                            languagelist)),
                  );
                },
              ),
            );
          },
        ));
  }
}

class SecondList extends StatefulWidget {
  final index;
  final title;
  final languagelist;
  SecondList(this.index, this.title, this.languagelist);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<SecondList>{
  Map<String, List<String>> seclist;
  void initState() {
    super.initState();
    seclist = widget.languagelist[widget.title];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(widget.title, style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          itemCount: seclist['items'].length,
          itemBuilder: (context, index) {
            return new Container(
              child: new Column(
                children: <Widget>[
                  ListTile(
                    title: Text(seclist['items'].toList()[index]),
                    subtitle: Text(seclist['subtitle'].toList()[index]),
                    trailing: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(5)),
                      child: Text(seclist['label'].toList()[index])),
                    onTap: () {
                      launch(seclist['links'].toList()[index].toString());
                    },
                  ),
                  SizedBox(height: 5),
                ],
              ),
            );
          },
        ),
      );
  }
}
