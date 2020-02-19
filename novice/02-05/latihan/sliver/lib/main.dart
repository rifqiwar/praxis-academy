import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight:200.0,
            floating:false,
            pinned:true,
            flexibleSpace:FlexibleSpaceBar(

            ),
          )
        ],
      ),

    ) ;

  }
}
