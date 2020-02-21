

// import 'package:flutter/material.dart';

// void main(){
//   runApp(
//     new MaterialApp(
//       title: 'Belajar Stateless Widget',
//       home: new MyApp(),
//     )
//   );
// }

// class MyApp extends StatelessWidget{
//   @override 
//   Widget build(BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text ('Belajar Statless Widget'),

//       ),
//       body : new Center(
//         child: new Text(
//           'Hello, World'
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main(){
//   runApp(new MaterialApp(
//     home: new MyApp()
//   ));
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar (title: new Text("Stateless Widget")),
//       body: new Container(
//         padding: new EdgeInsets.all(20.0),
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
            
//             new MyCard(
//               title: new Text("I Love Flutter",style: new TextStyle(fontSize:20.0)),
//               icon: new Icon(Icons.favorite, size: 40.0, color:Colors.redAccent)

//             ),
//             new MyCard(
//               title: new Text("I Love Domain",style: new TextStyle(fontSize:20.0)),
//               icon: new Icon(Icons.domain , size: 40.0, color:Colors.blue)

//             ),
//             new MyCard(
//               title: new Text("I Love Books",style: new TextStyle(fontSize:20.0)),
//               icon: new Icon(Icons.book , size: 40.0, color:Colors.green)

//             ),


//           ]
//         )
//       ),
//     );
//   }
// }

// class MyCard extends StatelessWidget{
//   MyCard({
//     this.title, this.icon
//   });
//   final Widget title;
//   final Widget icon;

//   @override
//   Widget build(BuildContext context){
//     return new Container(

//     padding: new EdgeInsets.only(bottom: 20.0),
//     child: new Card(
//       child: Container(
//         padding: new EdgeInsets.all(15.0),
//         child: new Column(
//           children: <Widget>[
//             this.title,
//             this.icon
//           ]
//         )
//       )
//     )
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<MyApp> {

  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
  String displayedString = "";

  //you can also declare variables like this
  // var counter = 0;
  // var strings = ["Flutter", "Is", "Awesome"];

  void onPressed(){
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter+1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateful Widget!"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("Press me!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                onPressed: onPressed
              )
            ]
          )
        )
      )
    );
  }
}
