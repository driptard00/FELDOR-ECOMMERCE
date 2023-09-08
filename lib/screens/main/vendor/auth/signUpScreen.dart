import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/buttond/apple_button.dart';
import '../../../../widget/buttond/auth_button.dart';
import '../../../../widget/buttond/google_button.dart';

class VendorSignUpScreen extends StatelessWidget {
VendorSignUpScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: Get.height,
          width: Get.width,
          color: Color(0xffF5F4FC),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Material(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Container(
                        height: 34,
                        width: 34,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "images/logo.png",
                    height: 50,
                    width: 50,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "PoppinsMedium"
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Please enter your details to sign up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Fullname",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          hintText: "Enter name",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15)
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          hintText: "Enter Email",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15)
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          hintText: "Enter Password",
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                          suffixIcon: const Icon(
                            Icons.visibility_outlined
                          )
                        ),
                        obscureText: true,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Repeat Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                          ),
                          hintText: "Enter Password",
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                          suffixIcon: const Icon(
                            Icons.visibility_outlined
                          )
                        ),
                        obscureText: true,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AuthButton.showButton("SIGN UP", (){
                    //  Get.toNamed(holderScreen);
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 0.3,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Or Sign up with",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppleButton.showButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  GoogleButton.showButton(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already on FELDOR ?",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.4),
                            fontFamily: "PoppinsMedium"
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: (){
                          Get.toNamed(vendorsLoginScreen);
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffDD3232),
                              fontFamily: "PoppinsMedium",
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}