import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
//        body: new CustomScrollView(
//          primary: false,
//          slivers: <Widget>[
////                  SliverList(
////                      delegate: SliverChildBuilderDelegate((
////                          BuildContext context, int index) {
////                        return MainPageTabHeaders(snapshot.data.headersSelector);
////                      }, childCount: 1)),
////                  buildFeeds(snapshot.data.feedStyle, snapshot.data),
//            SliverList(
//              delegate:
//                  SliverChildBuilderDelegate((BuildContext context, int index) {
//                int i = index % 3;
//                Color color = i == 0
//                    ? Colors.black87
//                    : i == 1 ? Colors.green : Colors.black26;
//                return Container(
//                  height: (Random().nextInt(10) * 10 + 30).toDouble(),
//                  color: color,
//                );
//              }),
//            )
//          ],
//        ) // This trailing comma makes auto-formatting nicer for build methods.
//      body: new CustomScrollView(
//        slivers: <Widget>[
//          SliverList(
//            delegate:
//                SliverChildBuilderDelegate((BuildContext context, int index) {
//              return Container(
//                height: 40,
//                color: Colors.black26,
//                margin: EdgeInsets.all(15),
//              );
//            }, childCount: 50),
//          )
//        ],
//      ),

      body: ListView.builder(physics: AlwaysScrollableScrollPhysics(),itemBuilder: (BuildContext context, int index){
       return Container(
          height: 40,
          color: Colors.black26,
          margin: EdgeInsets.all(15),
        );
      }, itemCount: 30,),
    );
  }
}
