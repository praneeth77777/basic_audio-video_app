import 'package:flutter/material.dart';
import 'audionet.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/praneeth77777/task1/master/music.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 180,
                  child: Image.network(''),
                ),
                Text('Drums',
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.black,
                    )),
                Container(height: 40, width: 180, child: myApp1())
              ],
            )
          ],
        ));

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
