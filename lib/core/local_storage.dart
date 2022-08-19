import 'package:get_storage/get_storage.dart';

class LocalStorage<T> {
  late T model;
  final _storage = GetStorage();

  addOrEdit({required String key, required value}) {
    _storage.write(key, value);
  }

  T getBy({required String key}) {
    return model;
  }

  deleteById({required String key}) {
    _storage.remove(key);
  }

  deleteAll() {
    _storage.erase();
  }
}
