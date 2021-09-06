import 'package:flutter/material.dart';

class Calculators with ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    'General Calculators':{
      'BMI and BSA(Du Bois)':'Answer all Questions',
      'BMI and BSA (Mosteller)':'Answer all Questions',
      'Body Surface Area Dosing':'Answer all Questions',
    }
  };

  Map<String,Map<String,String>> get items{
    return _items;
  } 
}
