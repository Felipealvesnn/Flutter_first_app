import 'package:flutter/widgets.dart';
import 'package:flutter_crud/Data/Dummy_users.dart';

import '../Models/users.dart';

class User_provider with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
