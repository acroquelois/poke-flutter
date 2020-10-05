import 'package:first_flutter_app/domain/word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myListWidget(BuildContext context, List<Word> words) {
  return ListView.builder(
    itemCount: words?.length,
    itemBuilder: (context, index) {
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
                      words[index].fr,
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
                      words[index].en,
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
    },
  );

}