

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


// import 'package:flutter/material.dart';

// void main(){
//   runApp(new MaterialApp(
//     home: new MyApp()
//   ));

  
// }

// class MyApp extends StatefulWidget{
//   @override
//   MyAppState createState() => new MyAppState();

// }

// class MyAppState extends State<MyApp>{
//   int counter = 0;
//   List <String> string = ["Flutter","Is", "Awesome"];
//   String displayedString = "";

//   void onPressed(){
//     setState(() {
//       displayedString = string[counter];
//       counter = counter < 2 ? counter +1 :0;
//     });
//   }


// @override 
// Widget build (BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar(title: new Text("Statefull Widget"), backgroundColor: Colors.orange),
//       body: new Container(
//         child: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
//             new Padding(padding: new EdgeInsets.all(15.0)),
//             new RaisedButton(
//               child: new Text("Press me!", style: new TextStyle(color:  Colors.white, fontStyle: FontStyle.italic, fontSize:20.0)),
//               color: Colors.red,
//               onPressed: onPressed
//             )
//           ]
//         )
//       )
//     )
//   );
//   }
// }

// import 'package:flutter/material.dart';

// void main(){
//   runApp(new MaterialApp(
//     home:  new MyApp(),
//     routes: <String, WidgetBuilder>{
//       "/SecondPage":(BuildContext context) => new SecondPage()
//     },
//   ));
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar(title: new Text('HomePage'), backgroundColor: Colors.tealAccent),
//       body: new Container(
//         child: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new IconButton(
//                 icon: new Icon(Icons.favorite, color:Colors.redAccent),
//                 iconSize: 70.0,
//                 onPressed: (){ Navigator.of(context).pushNamed("/SecondPage");},

//               ),
//               new Text("Home")
//             ]
//           )
//         )
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return new Scaffold(
//       appBar: new AppBar(title: new Text ("Second Page"), backgroundColor: Colors.pink),
//       body: new Container(
//         child: Center(
//           child: new Column(
//             mainAxisAlignment : MainAxisAlignment.center,
//             children: <Widget>[
//               new IconButton(
//                 icon: new Icon(Icons.file_download, color:Colors.brown),
//                 iconSize: 20.0,
//                 onPressed: null,
//               ),
//               new Text("Second Page")
//             ]
//           )
//         )
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var routes = <String, WidgetBuilder>{
      MyItemsPage.routeName: (BuildContext context) => new MyItemsPage(title: "MyItemPage"),

    };
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: new MyHomePage(title: 'Fluuter Home Page'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key:key);

  final String title;

  @override
  _MyHomePageState createState()=> new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>{
int _counter = 0;

void _incrementCounter(){
  Navigator.pushNamed(context, MyItemsPage.routeName);
}

@override
Widget build(BuildContext context){
    var button = new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);
  return new Scaffold(
    appBar: new AppBar(
      title: new Text (widget.title),
    ),
    body: new Column(
      children: <Widget>[
        new Text ('Kamu'),
        new Text ('Aku'),
        button
      ],
    ),
    floatingActionButton: new FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip:'increment',
      child: new Icon(Icons.add),
    ),
  );
}


void _onButtonPressed(){
  Navigator.pushNamed(context, MyItemsPage.routeName);

}
}

class MyItemsPage extends StatefulWidget{
  MyItemsPage({Key key, this.title}):super(key:key);

  static const String routeName = "/MyItemPage";

  final String title;

  @override
  _MyItemsPageState createState() => new _MyItemsPageState();
}

class _MyItemsPageState extends State<MyItemsPage>{
  @override
  Widget build(BuildContext context){
    var button = new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Column(
          children:<Widget>[
            new Text('Item 1'),
            new Text('Item 2'),
            button
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: _onFloatingActionButtonPressed,
      tooltip:'Add',
      child: new Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed(){

  }

  void _onButtonPressed(){
    Navigator.pop(context);
  }
}

