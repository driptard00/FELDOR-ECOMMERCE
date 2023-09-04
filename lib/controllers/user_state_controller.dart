import 'package:feldor_app/screens/main/user/holder_views/home_screen.dart';
import 'package:feldor_app/screens/main/user/holder_views/profile_screen.dart';
import 'package:feldor_app/screens/main/user/holder_views/store_screen.dart';
import 'package:feldor_app/screens/main/user/holder_views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserStateController extends GetxController {
  // INSTANT VARIABLE
  List<Widget> _screens = [
    UserHomeScreen(),
    UserStoreScreen(),
    UserWishListScreen(),
    UserProfileScreen()
  ];
  int _currentIndex = 0;

  // GETTERS
  List get screens => _screens;
  int get currentIndex => _currentIndex;

  // SETTERS
  updateCurrentIndex(value) {
    _currentIndex = value;
    update();
  }
}