import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_Us': {'message': "Welcome to India", "name": "Dhruvik"},
        'hi_IN': {'message': "भारत में आपका स्वागत है", "name": "ध्रुविक"}
      };
}
