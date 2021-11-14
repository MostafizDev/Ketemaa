import 'package:get/get.dart';
import 'package:ketemaa/core/language/language_string.dart';

enum LanguageType { ENG, BAN, ARB, LI }

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'App_Name': 'Ketemaa',
          AppLanguageString.GOOGLE_LOGIN: 'Continue with Google',
          'Facebook_Login': 'Continue with Facebook',
          'Apple_Login': 'Continue with Apple',
          'Email_Login': 'Continue with Email',
          'Create_Account': 'Don\'t have any account? Create One',
          'Accept_TnC': 'By signing up I agree with the ',
          'Terms_Condition': 'Terms and Conditions',
          'Privacy_Policy': 'Privacy Policy',
          'Sign_Up_To': 'Sign up to',
          'Log_In_With_Email': 'Log in with email',
          'Name': 'Name',
          'Email': 'Email',
          'Password': 'Password',
          'Sign_Up': 'Sign Up',
          'Log_In': 'Log In',
          'and': "and",
          AppLanguageString.POPULAR_IN: 'Popular in',
          AppLanguageString.RESIDENTIAL_FOR_RENT: 'Residential for Rent',
          AppLanguageString.SELECT_CITY: 'Select a City',
          AppLanguageString.PLACEYOURADD: 'Where should we place your ad?',
          AppLanguageString.SELECT_CATEGORY: 'What are you listing?',
          AppLanguageString.MATCH_CATEGORY:
              'Choose the category that your ad fits into.',
          AppLanguageString.PLACE_A_ADD: 'Place a Ad',
          AppLanguageString.PROPERTY_ADD_TITLE:
              'First, enter a short title to describe you listing',
          AppLanguageString.PROPERTY_ADD_DISCRIPTION:
              'Make your title informative and attractive.',
          AppLanguageString.PROPERTY_ADD_TITLE_HINT:
              'e.g. Studio apt. available for monthly rent',
          AppLanguageString.LETS_GO: 'Let\'s Go',
        },
        'bd_BD': {},
      };
}
