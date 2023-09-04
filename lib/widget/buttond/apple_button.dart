import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppleButton{
  static showButton(){
    return InkWell(
      onTap: (){},
      child: Container(
        height: 40,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/apple.png"
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Login with Apple",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "PoppinsMedium"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}