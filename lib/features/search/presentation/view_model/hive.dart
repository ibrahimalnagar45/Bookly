import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

class CustomHive {
  List<String> searched = [];

  addItem(String value) async {
    int index = 0, i = 0;
    var interested = await Hive.openBox(SearchedKey);
    interested.put(index++, value);
 
 
    while (i <= index) { 
      print(" the hive items  is $searched");
      searched.add(interested.values.toString());
      index--;
    }

    // await Hive.openBox(SearchedKey).clear();
    // for (var item in searched) {
    //   interested.put(index++, item);

    // }
  }

  getItems() {
    return searched;
  }
}
