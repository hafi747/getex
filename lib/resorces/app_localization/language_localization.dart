import 'package:get/get_navigation/get_navigation.dart';

class languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_Us': {
      'email_hint': 'Enter Email',
      'password_hint': 'Enter Password',
      'login': 'Login',
      'internet_exception':
          'sorry we cant access your widget right now please check your internet connection',
      'general_exception': 'some thing went wrong please try again later',
      'email': 'Email',
      'password': 'Password',
      'forget_password': 'Forget Password?',
      'welcomeback': 'Welcome\nBack',
    },
    'ur_PK': {
      'email_hint': 'ای میل درج کریں',
      'password_hint': 'پاس ورڈ درج کریں',
      'login': 'لاگ ان کریں',
      'internet_exception':
          'معذرت ہم ابھی آپ کی ویجیٹ تک رسائی حاصل نہیں کر سکتے براہ کرم اپنے انٹرنیٹ کنکشن کی جانچ کریں',
      'general_exception': 'کچھ غلط ہو گیا براہ کرم بعد میں دوبارہ کوشش کریں',
    },
  };
}
