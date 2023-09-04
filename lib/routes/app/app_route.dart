import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:feldor_app/screens/auth/loginScreen.dart';
import 'package:feldor_app/screens/auth/signupScreen.dart';
import 'package:feldor_app/screens/main/user/holder_screen.dart';
import 'package:feldor_app/screens/splashScreen/splashScreen.dart';
import 'package:get/get.dart';

List<GetPage> getPages = [
  GetPage(
      name: splashScreen,
      page: ()=> SplashScreen()
  ),

  // ======== AUTH SCREENS =======
  GetPage(
      name: signupScreen,
      page: ()=> SignUpScreen()
  ),
  GetPage(
      name: loginScreen,
      page: ()=> LoginScreen()
  ),

  // ========== MAIN SCREEN ========= (USERS)
  GetPage(
    name: holderScreen,
    page: ()=> UserHolderScreen()
  ),
];