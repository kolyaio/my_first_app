import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstWidget());
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text myText = Text("This is a nice photo", textDirection: TextDirection.ltr);

    Image myImage = Image.network("https://images.pexels.com/photos/1168940/pexels-photo-1168940.jpeg");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp")),
        body: Center(
          child: Column(
            children: <Widget>[myText, myImage],
            mainAxisSize: MainAxisSize.min,
          ),
        )
      )
    );
  }
}



