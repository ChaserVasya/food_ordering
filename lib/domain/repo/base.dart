import 'package:food_ordering/domain/entity/interface/unique.dart';

abstract class Repo<T extends Unique> {
  Future<List<T>> getAll();
  Future<T> get(int id);
}
