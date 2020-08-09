import 'package:flutter/material.dart';
import 'audio.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/praneeth77777/task1/master/music1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Text(
              'hindi',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: 200,
              child: myApp(),
            ),
          ],
        )
      ]),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: mybody,
      ),
    );
  }
}
