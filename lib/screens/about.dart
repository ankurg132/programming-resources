import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class AboutPage extends StatefulWidget {
  @override
    _State createState() => _State();
}

class _State extends State<AboutPage>{
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Team Semikolon presents",
      "Programming Resources",
      "semicolondevteam@gmail.com"
    ];
    final List<Widget> images = [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.black,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.blue,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.orangeAccent,
      ),
    ];
    return Scaffold(
      appBar: 
      AppBar(title: new Text('About us',
              style: TextStyle(color:Colors.white)),
             backgroundColor: Colors.purple.shade700,
             ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Card(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {
                    print(page);
                  },
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}