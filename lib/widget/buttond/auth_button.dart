import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton{
  static showButton(String text, Function() onPressed){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: Get.width,
        decoration: BoxDecoration(
          color: const Color(0xffFB3131),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}