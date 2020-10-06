import 'file:///D:/universite/prog-mobile/first_flutter_app/lib/data/localDataSource/db_provider.dart';
import 'file:///D:/universite/prog-mobile/first_flutter_app/lib/data/localDataSource/word_repository.dart';
import 'file:///D:/universite/prog-mobile/first_flutter_app/lib/ui/pages/home.dart';
import 'file:///D:/universite/prog-mobile/first_flutter_app/lib/ui/pages/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';

import 'data/localDataSource/data_fake_initializer.dart';

void main() async{
  DBProvider.db.initDB();
  DataInitializerImpl.initializer.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder> {
        ListPage.routeName : (BuildContext context) => const ListPage()
      },
    );
  }
}


