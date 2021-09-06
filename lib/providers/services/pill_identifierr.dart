import 'package:flutter/material.dart';

class PillIndentifier with ChangeNotifier {
  Map<String, dynamic> _items = {
    'Shape': {
      'Round Shape': 'Shape Images',
      'Oblong Shape': 'Shape Images',
      'Oval Shape': 'Shape Images'
    }
  };

  Map<String, dynamic> get items {
    return _items;
  }
}
