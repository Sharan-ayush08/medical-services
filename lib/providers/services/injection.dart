import 'package:flutter/material.dart';

class Injections with ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    'Methapred(Methylprednisoline Sodium Succinate)': {'Injection': 'Injection'}
  };
  Map<String, Map<String, String>> get items {
    return _items;
  }
}
