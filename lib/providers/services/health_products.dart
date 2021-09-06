import 'package:flutter/material.dart';

class HealthProducts with ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    'Vitamins and Suppliments': {
      'Piramal Ourdaily':
          'It is vitamin E supplement that promotes healthy skin,nourishes scalp and hair and maintains eye health.',
      'Cimune SF Vitamin C and Zinc Sugar ':
          'It is an Immune care fortified with Vitamin C and zinc to boost the antibody levels.'
    },
    'Oral Care': {
      'Listerine Cool Mint Mouth Wash':
          'A germ Killer that gives 24-hour protection.'
    }
  };

  Map<String, Map<String, String>> get items {
    return _items;
  }
}
