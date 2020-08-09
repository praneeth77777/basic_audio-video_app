import 'package:flutter/material.dart';
import 'video.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/praneeth77777/task1/master/third.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              height: 200,
              width: 420,
              child: VideoApp(),
            ),
            Text(
              'Guitar',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
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
