import 'package:first_flutter_app/domain/word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("list"),
      ),
      body: ListWidget(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',

        child: Icon(Icons.create),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  var wordList = [
    Word(id: 1, fr: "écran", en: "screnn"),
    Word(id: 2, fr: "sable", en: "send"),
    Word(id: 3, fr: "verre", en: "glass"),
    Word(id: 4, fr: "terre", en: "dirt"),
    Word(id: 5, fr: "pierre", en: "stone"),
    Word(id: 6, fr: "bois", en: "wood"),
    Word(id: 7, fr: "premier", en: "first"),
    Word(id: 8, fr: "quatre", en: "four"),
    Word(id: 9, fr: "cinq", en: "five"),
    Word(id: 10, fr: "dix", en: "ten"),
    Word(id: 11, fr: "maison", en: "house"),
    Word(id: 12, fr: "bus", en: "bus"),
    Word(id: 13, fr: "frère", en: "brother"),
    Word(id: 14, fr: "soeur", en: "sister"),
    Word(id: 15, fr: "voiture", en: "car"),
  ];
  return ListView.builder(
    itemCount: wordList.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          title: Text(wordList[index].fr),
        ),
      );
    },
  );

}