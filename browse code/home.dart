import 'package:flutter/material.dart';
import 'First.dart';
import 'Second.dart';
import 'Third.dart';
import 'Forth.dart';

class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            'https://raw.githubusercontent.com/praneeth77777/task1/master/walpic.jpg'),
        fit: BoxFit.cover,
      )),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(children: <Widget>[
            Center(
                child: Text(
              'audio',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            )),
            Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Builder(
                    builder: (context) => RaisedButton(
                      textColor: Colors.black,
                      color: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => First()),
                        );
                      },
                      child: Text("song1", style: TextStyle(fontSize: 48)),
                    ),
                  ),
                  Builder(
                    builder: (context) => RaisedButton(
                      textColor: Colors.black,
                      color: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Second()),
                        );
                      },
                      child: Text("songn", style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ])),
            Center(
              child: Text(
                'video',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                ),
              ),
            ),
            Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Builder(
                    builder: (context) => RaisedButton(
                      textColor: Colors.black,
                      color: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Third()),
                        );
                      },
                      child: Text("video1", style: TextStyle(fontSize: 48)),
                    ),
                  ),
                  Builder(
                    builder: (context) => RaisedButton(
                      textColor: Colors.black,
                      color: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forth()),
                        );
                      },
                      child: Text("videon", style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ])),
          ]),
        ],
      ),
    );

    var mybody = container;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('music', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.orange[900],
          leading: Image.network(
              'https://raw.githubusercontent.com/praneeth77777/flutter_class/master/music-app-icon_02.png'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: null,
            )
          ],
        ),
        body: mybody,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
