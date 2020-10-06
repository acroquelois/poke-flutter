import 'package:first_flutter_app/data/entities/word.dart';
import 'package:first_flutter_app/data/localDataSource/word_repository.dart';
import 'package:first_flutter_app/ui/widgets/custom_list.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  static const String routeName = '/list';

  const ListPage({Key key}) : super(key: key);
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list"),
      ),
      body: ListWidget(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',

        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListWidget extends StatelessWidget {
  List<Word> _words = [];

  Future<List<Word>> _getWords() async {
    var repo = WordRepositoryImpl();
    return await repo.words();
  }

  @override
  Widget build(BuildContext context){
    return new FutureBuilder<List<Word>>(
      future: _getWords(),
      initialData: [], // a Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<List<Word>> snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          if(snapshot.hasData)
            return CustomList(listWord: snapshot.data);
          else
            return CustomList(listWord: []);
        } else
          return CircularProgressIndicator();
      },
    );
  }
}