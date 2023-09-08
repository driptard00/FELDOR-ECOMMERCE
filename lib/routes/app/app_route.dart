import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:feldor_app/screens/main/user/auth/loginScreen.dart';
import 'package:feldor_app/screens/main/user/auth/signupScreen.dart';
import 'package:feldor_app/screens/main/user/holder_screen.dart';
import 'package:feldor_app/screens/main/user/holder_views/itemDetailsScreen.dart';
import 'package:feldor_app/screens/main/vendor/auth/loginScreen.dart';
import 'package:feldor_app/screens/main/vendor/auth/signUpScreen.dart';
import 'package:feldor_app/screens/splashScreen/splashScreen.dart';
import 'package:feldor_app/screens/usertype/selectUserTypeScreen.dart';
import 'package:get/get.dart';

List<GetPage> getPages = [
  GetPage(
      name: splashScreen,
      page: ()=> SplashScreen()
  ),

 // ====== USER TYPE SCREEN =======
  GetPage(
    name: selectUserTypeScreen,
    page: ()=> SelectUserTypeScreen()
  ),

  // ========== MAIN SCREEN ========= (USERS)

  // AUTH SCREENS 
  GetPage(
      name: signupScreen,
      page: ()=> SignUpScreen()
  ),
  GetPage(
      name: loginScreen,
      page: ()=> LoginScreen()
  ),
  GetPage(
    name: holderScreen,
    page: ()=> UserHolderScreen()
  ),
  GetPage(
    name: itemDetailsScreen,
    page: ()=> ItemDetailsScreen()
  ),


  // ========== MAIN SCREEN ========= (VENDORS)

  // AUTH SCREENS 
  GetPage(
      name: vendorsLoginScreen,
      page: ()=> VendorLoginScreen()
  ),
  GetPage(
      name: vendorsSignUp,
      page: ()=> VendorSignUpScreen()
  ),
];