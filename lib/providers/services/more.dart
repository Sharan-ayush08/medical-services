import 'package:flutter/material.dart';

class More with ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    'Drugs': {
      'Naviagte to Drugs page': 'Drugs Page',
    },
    'Procedure': {
      'Navigate to Procedures page': 'Procedure Page',
    }
  };

  Map<String, Map<String, String>> get items {
    return _items;
  }
}
