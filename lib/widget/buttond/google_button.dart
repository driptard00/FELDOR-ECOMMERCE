import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoogleButton{
  static showButton(){
    return InkWell(
      onTap: (){},
      child: Container(
        height: 40,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black
          )
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/google.png"
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Login with Google",
                style: TextStyle(
                  color: Colors.black,
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