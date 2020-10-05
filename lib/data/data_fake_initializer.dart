import 'package:first_flutter_app/data/word_repository.dart';
import 'package:first_flutter_app/domain/word.dart';

abstract class DataInitializer {
  Future<void> init();
}

class DataInitializerImpl implements DataInitializer {
  DataInitializerImpl._();
  static final DataInitializerImpl initializer = DataInitializerImpl._();

  @override
  Future<void> init() async{
    var repo = WordRepositoryImpl();
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
    for (var word in wordList){
      await repo.insertWord(word);
    }
  }

}