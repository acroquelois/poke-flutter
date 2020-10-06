import 'package:first_flutter_app/domain/word.dart';
import 'package:first_flutter_app/ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  List<Word> listWord;

  CustomList({Key key, @required this.listWord}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.listWord?.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {Navigator.pop(context);},
            child: CustomCard(word: this.listWord[index])
        );
      },
    );
  }
}