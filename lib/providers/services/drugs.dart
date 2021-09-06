import 'package:flutter/material.dart';

class Drugs with ChangeNotifier {
  Map<String, Map<String, String>> _items = {
    'abatacept': {
      'Dosage & Indication': 'Injection,Iyophilized powder for reconsitution',
      'Interaction': 'Contradicated...',
      'Adverse Effects': "Headacge(18%),Nasopharyngits(12%)",
      'Warning': 'None Listed by the manfucaturer',
      'Pregnancy':
          'Healthcare professional are encouraged to register patients and pregant women.',
      'Pharmacology': 'chemeric protein',
      'Adminstration':
          'Reconstitute each vial contents with 10ml sterile water for injection uisng Only the silicions-free.',
      'Image': 'Loading',
      'Formulary': 'Orenica,Orencia ClickJet'
    },
    'abacavir': {
      'Dosage & Indication':
          'Indicated for treatment of HIV infection in combination with other antirevorial agents.',
      'Interaction': 'Cntradicated...',
      'Adverse Effects': 'Nausea,Heache',
      'Warning': 'Hyoersentivity reactions',
      'Pregnancy':
          'Healthcare professional are encouraged to register patients and pregnant women.',
      'Pharmacology':
          'Gaunsoine analog that inhibits HIV-1 reverse transcriptes by completing with dGTP.',
      'Adminstration':
          'Reconstitute each vial contents with 10ml sterile water for injection uisng Only the silicions-free.',
      'Image': 'Loading',
      'Formulary': 'Orenica,Orencia ClickJet'
    },
  };

  Map<String, Map<String, String>> get items {
    return _items;
  }
}
