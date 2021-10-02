import 'package:flutter/material.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:programming_resources/models/itemlist.dart';
import 'package:programming_resources/screens/about.dart';
import 'package:programming_resources/screens/githubrepos.dart';
import 'package:programming_resources/screens/languages.dart';
import 'package:programming_resources/screens/signin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programming Resources',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SignIn(),
      // home: MyHomePage(
      //     title: 'Programming Resouces', items: itemlist.keys.toList()),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title, this.items}) : super(key: key);
//   final String title;
//   final List<String> items;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   FancyDrawerController _controller;
//   @override
//   void initState() {
//     super.initState();
//     FirebaseMessaging fbm = FirebaseMessaging();
//     fbm.requestNotificationPermissions();
//     fbm.configure(onMessage: (msg) {
//       print(msg);
//       return;
//     }, onLaunch: (msg) {
//       print(msg);
//       return;
//     }, onResume: (msg) {
//       print(msg);
//       return;
//     });
//     _controller = FancyDrawerController(
//         vsync: this, duration: Duration(milliseconds: 200))
//       ..addListener(() {
//         setState(() {});
//       });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FancyDrawerWrapper(
//       backgroundColor: Colors.white,
//       controller: _controller,
//       drawerItems: <Widget>[
//         TextButton(
//             onPressed: () => {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => AboutPage()),
//                   )
//                 }, //aboutusClick(context),
//             child: Text(
//               'About Us',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             )),
//         TextButton(
//             onPressed: () => {
//                   launch(
//                       'https://docs.google.com/forms/d/e/1FAIpQLSdrx4E78wM_RZ67szoqta_DvJ-J8629gMta4j16V0PRe0jxXQ/viewform?usp=sf_link')
//                 }, //contributeClick(context),
//             child: Text(
//               'Contribute',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             )),
//       ],
//       child: Scaffold(
//         appBar: AppBar(
//           title: new Text(widget.title, style: TextStyle(color: Colors.white)),
//           leading: IconButton(
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               _controller.toggle();
//             },
//           ),
//         ),
//         body: ListView.builder(
//           itemCount: widget.items.length + 1,
//           itemBuilder: (context, index) {
//             return Card(
//               child: (index >= widget.items.length)
//                   ? ListTile(
//                       title: Text((index + 1).toString() +
//                           ". " +
//                           github.keys.toList()[0].toString()),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => GithubRepos()),
//                         );
//                       },
//                     )
//                   : ListTile(
//                       title: Text(
//                           (index + 1).toString() + ". " + widget.items[index]),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ListTitlePage(index,
//                                   itemlist.keys.toList()[index].toString())),
//                         );
//                       },
//                     ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


