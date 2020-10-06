import 'package:first_flutter_app/data/entities/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCard extends StatelessWidget {
  Word word;

  CustomCard({Key key, @required this.word}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            ListTile(
              title: new Center(
                  child: new Text(
                    word.fr,
                    style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0
                    ),
                  )
              ),
            ),
            const Divider(
              color: Colors.blue,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: new Center(
                  child: new Text(
                    word.en,
                    style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0
                    ),
                  )
              ),
            ),
          ],
        )
    );
  }
}
