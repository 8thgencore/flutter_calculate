import 'package:hive/hive.dart';

import '../model/calculation.dart';

class HiveDataProvider {
  HiveBoxProvider<Calculation> get calculationsBoxProvider =>
          () => Hive.openBox<Calculation>("calculations");
}

typedef HiveBoxProvider<T extends HiveObject> = Future<Box<T>> Function();