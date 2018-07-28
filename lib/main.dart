import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySecondWidget());
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

class MySecondWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MySecondWidget> {
  String url = "https://source.unsplash.com/random/800x600";
  // A random image from Unsplash

  @override
  void setState(VoidCallback fn) {
    url = "https://source.unsplash.com/random/800x600/?" +
          "q=${new DateTime.now().millisecondsSinceEpoch}";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Press Me"),
                      onPressed: changeURL,
                    ),
                    Image.network(url)
                  ],
                )
            )
        )
    );
  }

  void changeURL() {
   this.setState(() {
     url = "https://source.unsplash.com/random/800x600/?" +
         "q=${new DateTime.now().millisecondsSinceEpoch}";
   });
  }


}



